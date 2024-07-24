global _start

_start:
    call func ; pushes the address of func to the stack and jumps to it
    mov eax, 1
    syscall

func:
    mov ebx, 45
    ret ; pops the address of func from the stack and stores it in eax
         ; jumps to the address stored in eax