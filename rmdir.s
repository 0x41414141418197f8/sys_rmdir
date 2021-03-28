BITS 64

global _main


section .rodata

	path db 'ez', 0

	cbon db 'fait.', 0
	cbon_len equ $-cbon


section .text

_main:
	mov rax, 84
	mov rdi, path
	syscall
	jmp _exit

_exit:
	mov rax, 0x3C
	mov rdi, 0
	syscall
