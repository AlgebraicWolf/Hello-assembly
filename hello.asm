format ELF64 executable 3
entry start

segment readable executable

start:
mov rax, 1		; Function 1 - sys_write
mov rdi, 1		; stdout descriptor
mov rsi, msg		; Buffer with text
mov rdx, msg_size	; Size of line
syscall			; Call sys_write function

mov rax, 60		; Function 60 - sys_exit
xor rdi, rdi		; Exit code 0
syscall			; Call termination function

segment readable writable

msg db 'Hello, FASM!', 0xA
msg_size = $-msg
