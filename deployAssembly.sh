nasm -f elf HelloWorld.asm
ld -m elf_i386 -o HelloWorld  HelloWorld.o
