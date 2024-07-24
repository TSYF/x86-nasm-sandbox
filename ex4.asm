global _start

section .text
_start:
    ; mov eax, 4   ; sys_write system call
    mov ebx, 1   ; stdout file descriptor
    mov ecx, 4   ; iterations

loop:
    add ebx, ebx ; ebx += ebx
    dec ecx
    ; inc ecx
    cmp ecx, 0   ; compare ecx to 0
    jg loop
    mov eax, 1   ; sys_exit system call
    int 0x80     ; call kernel