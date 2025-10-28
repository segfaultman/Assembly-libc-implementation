# Assembly-libc-implementation
A very very incomplete custom libc implementation for Linux written in x86 assembly for fun.

### [DISCLAIMER] This project is not intended to replace the libc that you are currently using. It's just a random assembly project I'm writing for fun.

### How to compile
To test the lib you need Nasm x86 assembler and probably a C compiler. Then you can do something like this:
```
nasm -f elf64 -o stdio.o lib-src/x86-64/stdio.asm`
```
And then link with your C code:
```
clang stdio.o usage_example.c test_app
```

You might have to tweak some parameters for it to work.
