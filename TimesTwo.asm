global _TimesTwo

section .text
    _TimesTwo:
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