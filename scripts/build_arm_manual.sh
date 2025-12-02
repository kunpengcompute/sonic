#!/bin/bash
# usage: build_arm_manual.sh [sve/neon]

# Please set LLVM_HOME
#export LLVM_HOME=/home/username/app/llvm-install-asm2asm
#export LLVM_HOME=clang+llvm-16.0.6-aarch64-linux-gnu
#export LLVM_HOME=/home/username/llvm/llvm-install-asm2asm
#export PATH=$LLVM_HOME/bin:$PATH
#export LD_LIBRARY_PATH=$LLVM_HOME/lib:$LD_LIBRARY_PATH
#export C_INCLUDE_PATH=/usr/include/simde:$C_INCLUDE_PATH

# Define the directories
SRC_DIR="native"
TMP_DIR="output/arm"
#OUT_DIR="internal/native/neon"
TOOL_DIR="tools"
CC=clang

simd=$1
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

src_file="$SRC_DIR/skip_one_fast.c"

base_name=$(basename "$src_file" .c)
    
# Define the output file path
asm_file="$TMP_DIR/${base_name}.s"

# Compile the source file into an assembly file
echo $asm_file
echo $src_file

# SVE opt file list
# get_by_path.c   lookup_small_key.c  html_escape.c parse_with_padding.c  skip_one.c skip_one_fast.c
if [ "$simd" == "sve" ]; then
    echo "build sve version"
    $CC -g0 -fverbose-asm -fstack-usage -D__SVE__ -fsigned-char -Wa,--no-size-directive -fno-ident -fno-jump-tables -fno-pic -mllvm -disable-constant-hoisting -mllvm=--go-frame -fno-addrsig -ffixed-x9 -ffixed-x28 -no-integrated-as -Wno-error -Wno-nullability-completeness -march=armv8.5-a+sve+crypto -Itools/simde/simde -mno-red-zone -fno-asynchronous-unwind-tables -fno-builtin -fno-exceptions -fno-rtti -fno-stack-protector -nostdlib -O3 -mno-red-zone -fno-asynchronous-unwind-tables -fno-builtin -fno-exceptions -fno-rtti -fno-stack-protector -nostdlib -S -o "$asm_file" "$src_file"
else
    echo "build neon version"
    $CC -g0 -fverbose-asm -fstack-usage -fsigned-char -Wa,--no-size-directive -fno-ident -fno-jump-tables -fno-pic -mllvm=--go-frame -mllvm=--enable-shrink-wrap=0 -fno-addrsig -ffixed-x28 -no-integrated-as -Wno-error -Wno-nullability-completeness -march=armv8.5-a+simd -Itools/simde/simde -mno-red-zone -fno-asynchronous-unwind-tables -fno-builtin -fno-exceptions -fno-rtti -fno-stack-protector -nostdlib -O3 -mno-red-zone -fno-asynchronous-unwind-tables -fno-builtin -fno-exceptions -fno-rtti -fno-stack-protector -nostdlib -S -o "$asm_file" "$src_file"
fi

#   ./asm2goasm output/arm/parse_with_padding.s output/arm/parse_with_padding_arm64.s
#    ./transgas output/arm/parse_with_padding_arm64.s
#    ./asm2goasm "$asm_file" "$asm_file_arm"
#    ./transgas "$asm_file_arm"
