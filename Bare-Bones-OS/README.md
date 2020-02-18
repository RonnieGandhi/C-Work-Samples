# Bare Bones OS

This is an OS kernel, implementation of bare bones tutorial in os-dev.
It simply prints `Hello, kernel world!` and stops.


## Instructions:

To build the repository, you will need the following dependencies:

```
    1. GCC Cross-Compiler (target: i686-elf)
    2. qemu-system-x86 (apt install qemu)
    3. mtools (apt install mtools)
    4. grub-mkrescue
```

If you meet all the depencies, run:
```
    $ make all
```

This will create a directory `isodir` with all the contents necessary for the OS. To run the OS, type:

```
    $ make run
```