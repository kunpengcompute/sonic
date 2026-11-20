#!/bin/bash

# 项目根目录
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/cpu_detect.sh"
check_kunpeng_cpu

TOOL_DIR="$(dirname "${SCRIPT_DIR}")"   # asm2arm_tool
PROJECT_DIR="$(dirname $(dirname "${TOOL_DIR}"))"   # sonic
OUTPUT_DIR="${TOOL_DIR}/output"
NATIVE_DIR="$PROJECT_DIR/internal/native"

# 拷贝文件
function copy_files() {
    echo "Copying files from $OUTPUT_DIR to $NATIVE_DIR..."

    # 拷贝 neon 文件
    if [ -d "$OUTPUT_DIR/neon" ]; then
        cp -r "$OUTPUT_DIR/neon"/* "$NATIVE_DIR/neon/" 2>/dev/null || true
        echo "Copied neon files"
    fi

    # 拷贝 sve_wrapgoc 文件
    if [ -d "$OUTPUT_DIR/sve_wrapgoc" ]; then
        cp -r "$OUTPUT_DIR/sve_wrapgoc"/* "$NATIVE_DIR/sve_wrapgoc/" 2>/dev/null || true
        echo "Copied sve_wrapgoc files"
    fi

    # 拷贝 sve_linkname 文件
    if [ -d "$OUTPUT_DIR/sve_linkname" ]; then
        cp -r "$OUTPUT_DIR/sve_linkname"/* "$NATIVE_DIR/sve_linkname/" 2>/dev/null || true
        echo "Copied sve_linkname files"
    fi
}

# 执行测试
function run_tests() {
    local usevm=$1
    local wrapgoc=$2
    local linkname=$3
    local test_dir="$OUTPUT_DIR/test_results/usevm_${usevm:-auto}_wrapgoc_${wrapgoc:-auto}_linkname_${linkname:-auto}"

    echo ""
    echo "Running tests with SONIC_ENCODER_USE_VM=$usevm SONIC_USE_SVE_WRAPGOC=$wrapgoc, SONIC_USE_SVE_LINKNAME=$linkname..."
    mkdir -p "$test_dir"

    # 设置环境变量
    export SONIC_ENCODER_USE_VM=$usevm
    export SONIC_USE_SVE_WRAPGOC=$wrapgoc
    export SONIC_USE_SVE_LINKNAME=$linkname

    # 执行编码器测试（-count=1 禁用测试缓存：环境变量在包 init 阶段读取，不会计入缓存键）
    echo "Running encoder tests..."
    go test -count=1 -v $PROJECT_DIR/internal/encoder/... > "$test_dir/encoder_test.log"
    echo "Encoder tests completed. Log saved to $test_dir/encoder_test.log"

    # 执行 UTF-8 测试
    echo "Running UTF-8 tests..."
    go test -count=1 -v $PROJECT_DIR/utf8/... > "$test_dir/utf8_test.log"
    echo "UTF-8 tests completed. Log saved to $test_dir/utf8_test.log"
}

# 主函数
function main() {
    # 拷贝文件
    copy_files

    # 创建测试结果目录
    mkdir -p "$OUTPUT_DIR/test_results"

    # 执行所有组合的测试
    # SONIC_ENCODER_USE_VM 为任意非空值即启用 VM 编码器，空串为 JIT 编码器；
    # SONIC_USE_SVE_WRAPGOC/LINKNAME 仅 "1"（强制）与 "0"（禁用）生效，空串为自动选择。
    # 不设置变量：JIT + 按硬件能力自动选择 SVE（本脚本已限定鲲鹏 CPU，预期 wrapgoc）
    run_tests "" "" ""
    # JIT + 显式降级到 NEON，作为对照基线
    run_tests "" 0 0
    # JIT + 强制 SVE linkname 实现
    run_tests "" 0 1
    # VM 编码器 + 自动 SVE，覆盖 VM 与 SVE wrapgoc 的默认组合
    run_tests 1 "" ""
    # VM 编码器 + NEON native
    run_tests 1 0 0

    echo ""
    echo "All tests completed!"
    echo "Test results saved in $OUTPUT_DIR/test_results/"
}

# 执行主函数
main
