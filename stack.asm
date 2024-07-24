global _start

section .text
_start:
    push 1234
    push 8964
    push 363
    sub esp, 4
    mov [esp], dword 65
    ; pop eax ; pops the value from the stack and stores it in eax
    
    ; == same as pop eax ==
    ; mov eax, dword [esp]
    ; add esp, 4
    ; =====================
    
    mov eax, 4
    mov ebx, 1
    mov ecx, esp
    mov edx, 4
    int 0x80
    mov eax, 1
    int 0x80