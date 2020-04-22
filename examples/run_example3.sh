#!/usr/bin/env bash
echo "Compiling..."
nasm -f bin example3.asm -o boot.bin
echo "Opening qemu..."
qemu-system-x86_64 -no-fd-bootchk -fda boot.bin
