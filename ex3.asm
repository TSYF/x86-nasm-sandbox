global _start

section .text
_start:
    mov ecx, 99  ; ecx to 99
    mov ebx, 42  ; exit status to 42
    mov eax, 1   ; sys_exit syscall
    cmp ecx, 100 ; compare ecx to 100
    ; jmp skip     ; jump to skip
    jl skip      ; jump to skip if less than
    ; je skip      ; jump to skip if equal
    ; jne skip     ; jump to skip if not equal
    ; jg skip      ; jump to skip if greater than
    ; jle skip     ; jump to skip if less than or equal
    ; jge skip     ; jump to skip if greater than or equal
    mov ebx, 13  ; exit status to 13

skip:
    int 0x80     ; call kernel
