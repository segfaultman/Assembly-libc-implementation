NEW_LINE_CHARACTER equ 0xa
SYSTEM_WRITE equ 1
STDOUT_DESCRIPTOR equ 1

global puts:
    ; Writes null-terminated strings to STDOUT
    ; Returns a negative number on error
    xor rcx, rcx

    .count_loop:
        cmp [rdi], byte 0
        je .write_string
        inc rcx
        inc rdi
        jmp .count_loop

    .write_string:
        cmp rcx, 0
        je .exit_function
        sub rdi, rcx
        mov rsi, rdi
        mov rdx, rcx
        mov rax, SYSTEM_WRITE
        mov rdi, STDOUT_DESCRIPTOR
        syscall

    .exit_function:
        ret
