global main
extern printf

section .data
    msg db "Hola, Mundo! %i", 0x0a, 0x00
    len equ $ - msg

main:
    ; Prologue
    push ebp
    mov ebp, esp

    push len ; This is just the interpolated int. No special meaning to it being the length of the string.
    push msg
    call printf
    mov eax, 0
    
    ; Epilogue
    mov esp, ebp
    pop ebp
    ret