global _start

section .text
_start:
    counter db 1   ; stdout file descriptor 
    len db 1
    mov ecx, 4   ; iterations

loop:
    mov counter, [counter] * 2
    dec ecx
    ; inc ecx
    cmp ecx, 0   ; compare ecx to 0
    jg loop
    mov eax, 4   ; sys_write system call
    mov ebx, 1   ; stdout file descriptor
    mov ecx, counter ; pointer to the start of the message (&msg[0])
    mov edx, len ; number of bytes to write / length of the message
    int 0x80     ; call kernel
    mov eax, 1   ; sys_exit system call
    int 0x80     ; call kernel