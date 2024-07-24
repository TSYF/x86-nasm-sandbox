global _start

section .data
    msg db "Hola, Mundo!", 0x0a ; db just stores bytes, 0x0a is the newline
    len equ $ - msg ; equ is an assembler directive that stores the difference between two labels
    ; - is the subtraction operator and it differs from sub in that it doesn't change the flags
    ; flags are a set of bits that indicate the state of the CPU at a given moment
    ; and they are important because they can be used to determine the outcome of an operation

section .text
_start:
    mov eax, 4   ; sys_write system call
    mov ebx, 1   ; stdout file descriptor
    mov ecx, msg ; pointer to the start of the message (&msg[0] | msg)
    mov edx, len ; number of bytes to write / length of the message
    int 0x80     ; call kernel
    
    mov eax, 1   ; sys_exit system call
    mov ebx, 0   ; exit code 0
    int 0x80     ; call kernel