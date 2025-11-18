#!/bin/bash
# usage: build_arm_manual.sh clang sve/neon

#export LLVM_HOME=/home/gongliangxu/app/llvm-install-asm2asm
#export LLVM_HOME=clang+llvm-16.0.6-aarch64-linux-gnu
#export LLVM_HOME=/home/zhangrutao/llvm/llvm-install-asm2asm
#export PATH=$LLVM_HOME/bin:$PATH
#export LD_LIBRARY_PATH=$LLVM_HOME/lib:$LD_LIBRARY_PATH
#export C_INCLUDE_PATH=/usr/include/simde:$C_INCLUDE_PATH

# Define the directories
SRC_DIR="native"
TMP_DIR="output/arm"
#OUT_DIR="internal/native/neon"
TOOL_DIR="tools"
CC=clang
if [ "$1" != "" ]; then
    CC=$1
fi

simd=$2
if [ "$simd" == "sve" ]; then
    OUT_DIR="internal/native/sve"
else
    OUT_DIR="internal/native/neon"
fi

echo "!!!!!! The compiler is :" $CC
echo "!!!!!! The SIMD is     :" $simd

# Create the output directory if it doesn't exist
mkdir -p "$TMP_DIR"
mkdir -p "$OUT_DIR"

base_name=$(basename "$src_file" .c)
    
# Define the output file path
asm_file="$TMP_DIR/${base_name}.s"

# Compile the source file into an assembly file
echo $asm_file
echo $src_file

if [ "$simd" == "sve" ]; then
    $CC -g0 -fverbose-asm -fstack-usage -D__SVE__ -fsigned-char -Wa,--no-size-directive -fno-ident -fno-jump-tables -fno-pic -mllvm -disable-constant-hoisting -mllvm=--go-frame -fno-addrsig -ffixed-x9 -ffixed-x28 -no-integrated-as -Wno-error -Wno-nullability-completeness -march=armv8.5-a+sve -Itools/simde/simde -mno-red-zone -fno-asynchronous-unwind-tables -fno-builtin -fno-exceptions -fno-rtti -fno-stack-protector -nostdlib -O3 -mno-red-zone -fno-asynchronous-unwind-tables -fno-builtin -fno-exceptions -fno-rtti -fno-stack-protector -nostdlib -S -o "$asm_file" "$src_file"
else
    $CC -g0 -fverbose-asm -fstack-usage -fsigned-char -Wa,--no-size-directive -fno-ident -fno-jump-tables -fno-pic -mllvm=--go-frame -mllvm=--enable-shrink-wrap=0 -fno-addrsig -ffixed-x28 -no-integrated-as -Wno-error -Wno-nullability-completeness -march=armv8.5-a+simd -Itools/simde/simde -mno-red-zone -fno-asynchronous-unwind-tables -fno-builtin -fno-exceptions -fno-rtti -fno-stack-protector -nostdlib -O3 -mno-red-zone -fno-asynchronous-unwind-tables -fno-builtin -fno-exceptions -fno-rtti -fno-stack-protector -nostdlib -S -o "$asm_file" "$src_file"
fi

asm_file="$TMP_DIR/${base_name}_g.s"
#    $CC -g -fverbose-asm  -D__SVE__ -Wa,--no-size-directive -fno-ident -fno-jump-tables -fno-pic -mllvm -disable-constant-hoisting -fno-addrsig -ffixed-x28 -no-integrated-as -Wno-error -Wno-nullability-completeness -march=armv8-a+sve -Itools/simde/simde -mno-red-zone -fno-asynchronous-unwind-tables -fno-builtin -fno-exceptions -fno-rtti -fno-stack-protector -nostdlib -O3 -mno-red-zone -fno-asynchronous-unwind-tables -fno-builtin -fno-exceptions -fno-rtti -fno-stack-protector -nostdlib -S -o "$asm_file" "$src_file"
pwd 
echo "asm_file is "${asm_file}
asm_file_arm="$TMP_DIR/${base_name}_arm64.s"
#   ./asm2goasm output/arm/parse_with_padding.s output/arm/parse_with_padding_arm64.s
#    ./transgas output/arm/parse_with_padding_arm64.s
#    ./asm2goasm "$asm_file" "$asm_file_arm"
#    ./transgas "$asm_file_arm"
