SEGMENT .code

GLOBAL _start

_start:
        mov rax, 1		; Function 1 - sys_write
        mov rdi, 1		; stdout descriptor
        mov rsi, msg		; Buffer with text
        mov rdx, msg_size	; Size of line
        syscall			; Call sys_write function

        mov rax, 60		; Function 60 - sys_exit
        xor rdi, rdi		; Exit code 0
        syscall			; Call termination function

SEGMENT .data
        
        msg db 'Hello, NASM!', 0xA
        msg_size equ $-msg
