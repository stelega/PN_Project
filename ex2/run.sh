#!/usr/bin/env bash
echo "Compiling..."
gcc -c -Os -m16 -ffreestanding -Wall -Werror -o boot.o draw.c
echo "Linking..."
ld -m elf_i386 -static -nostdlib -T../docs/linker.ld --nmagic -o boot.elf boot.o
echo "Converting to binary file..."
objcopy -O binary boot.elf boot.bin
echo "Opening qemu..."
qemu-system-x86_64 -no-fd-bootchk -fda boot.bin
