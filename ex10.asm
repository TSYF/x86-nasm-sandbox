global main
extern printf

section .data
    msg db "Hola, Mundo! %i", 0x0a, 0x00
    len equ $-msg

main:
    ; Prologue
    push ebp
    mov ebp, esp

    push 24
    push msg
    call printf
    mov eax, 0
    
    ; Epilogue
    mov esp, ebp
    pop ebp
    ret