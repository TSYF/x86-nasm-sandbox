global _start

section .data
    addr db 'yellow', 0x0a ; 0x0a = 10 = \n
    len equ $ - addr

section .text
_start:
    mov [addr], byte 'H'
    mov eax, 4
    mov ebx, 1
    mov ecx, addr
    mov edx, len
    int 0x80
    mov eax, 1
    int 0x80