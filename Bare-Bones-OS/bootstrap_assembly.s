/* Constants to be used later   */
.set ALIGN,   1<<0                /* ALIGN set to 0000 0001, to align loaded modules on page boundaries */
.set MEMINFO, 1<<1                /* MEMINFO set to 0000 0010, provide memory map */
.set FLAGS,   ALIGN | MEMINFO     /* FLAGS set to 0000 0011, Multiboot flag field */
.set MAGIC,   0x1BADB002          /* 'magic number' let's bootloader find the header */
.set CHECKSUM, -(MAGIC + FLAGS)   /* checksum of above, to prove we are multiboot */

/*
Declare multiboot header to mark the program as a kernel
*/
.section .multiboot
.align 4
.long MAGIC
.long FLAGS
.long CHECKSUM

.section .bss
.align 16
stack_bottom:
    .skip 16384 # 16 KiB
stack_top:


.section .text
.global _start
.type   _start, @function

_start:
    mov $stack_top, %esp
    call kernel_main

    cli
1:  hlt
    jmp 1b

.size _start, . - _start