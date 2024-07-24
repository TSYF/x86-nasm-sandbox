global _start

_start:
    mov eax, 21

    mov ecx, eax
    mov eax, 4
    mov ebx, 1
    mov edx, 4
    int 0x80
    ; push eax
    ; call PrintInt
    ; add esp, 4

    push eax
    call TimesTwo ; pushes the address of func to the stack and jumps to it
    add esp, 4 ; Cleans up the stack
    ; mov ebx, eax

    mov ecx, eax
    mov eax, 4
    mov ebx, 1
    mov edx, 4
    int 0x80
    ; push eax
    ; call PrintInt
    ; add esp, 4


    mov eax, 1
    mov ebx, 0
    int 0x80

TimesTwo:
    ; PROLOGUE
    push ebp ; Pushes the base pointer to the stack to keep track of it so that we can nest functions without fucking up the stack
    mov ebp, esp ; Moves the stack pointer to the base pointer in order to keep track of where the stack was when we called this function
    ; END PROLOGUE

    ; ARGUMENTS
    mov eax, [ebp + 8] ; + 8 so that we access the first argument (The 21 we pushed 2 stack entries ago)
    ; ARGUMENTS END

    ; BUSINESS LOGIC
    ; sub esp, 4 ; We make room in the stack for just anything we need to do. In this case, we don't need it.
    add eax, eax ; Multiplies the value of eax by 2. Hence the name of the function
    ; BUSINESS LOGIC END

    ; EPILOGUE
    mov esp, ebp ; Restores the stack pointer to the value of ebp
    pop ebp ; Pops the previous value of ebp from the stack and moves the stack pointer to the return address set by the call instruction for this function
    ; END EPILOGUE
    ret

PrintInt:
    ; PROLOGUE
    push ebp ; Pushes the base pointer to the stack to keep track of it so that we can nest functions without fucking up the stack
    mov ebp, esp ; Moves the stack pointer to the base pointer in order to keep track of where the stack was when we called this function
    ; END PROLOGUE

    ; ARGUMENTS
    mov eax, [ebp + 8] ; + 8 so that we access the first argument
    ; ARGUMENTS END

    ; BUSINESS LOGIC
    mov ecx, eax
    mov eax, 4
    mov ebx, 1
    mov edx, 4
    int 0x80
    ; BUSINESS LOGIC END

    ; EPILOGUE
    mov esp, ebp ; Restores the stack pointer to the value of ebp
    pop ebp ; Pops the previous value of ebp from the stack and moves the stack pointer to the return address set by the call instruction for this function
    ; END EPILOGUE
    ret