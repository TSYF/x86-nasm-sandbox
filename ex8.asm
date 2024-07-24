global _start

_start:
    call func ; pushes the address of func to the stack and jumps to it
    mov eax, 1
    mov ebx, 0
    int 0x80

func:
    push ebp ; so that we can nest functions without fucking up the stack
    mov ebp, esp
    sub esp, 4
    mov [esp], byte 'H'
    mov [esp + 1], byte 'o'
    mov [esp + 2], byte 'l'
    mov [esp + 3], byte 'a'
    mov eax, 4
    mov ebx, 1
    mov ecx, esp
    mov edx, 4
    int 0x80
    mov esp, ebp
    pop ebp
    ret ; pops the address of func from the stack and stores it in eax
         ; jumps to the address stored in eax