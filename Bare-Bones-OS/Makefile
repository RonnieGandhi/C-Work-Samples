# Simple makefile to build the kernel
#
# Build runs on codeship

all: kernel bootstrap_assembly linker os

kernel: kernel.c
	i686-elf-gcc -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra

linker: linker.ld
	i686-elf-gcc -T linker.ld -o myos.bin -ffreestanding -O2 -nostdlib bootstrap_assembly.o kernel.o -lgcc

bootstrap_assembly: bootstrap_assembly.s
	i686-elf-as bootstrap_assembly.s -o bootstrap_assembly.o

os:
	./grub-file.sh
	mkdir -p isodir/boot/grub
	mv myos.bin isodir/boot/myos.bin
	cp grub.cfg isodir/boot/grub/grub.cfg
	grub-mkrescue -o myos.iso isodir/
	rm kernel.o bootstrap_assembly.o

run:
	qemu-system-i386 -kernel isodir/boot/myos.bin

clean:
	rm -r isodir/
