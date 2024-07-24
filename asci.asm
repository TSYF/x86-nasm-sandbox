global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, [hello]
    mov edx, $ - hello
    int 0x80

hello:
    .asciz "Hello, World!"

    ; DOESN'T WORK