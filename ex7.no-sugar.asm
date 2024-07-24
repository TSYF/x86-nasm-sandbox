global _start

_start:
    sub esp, 4
    add esp, 1
    mov esp, func
    mov eax, 1
    int 0x80

func:
    mov ebx, 42
    mov eax, [esp]
    sub esp, 4
    mov esp, eax