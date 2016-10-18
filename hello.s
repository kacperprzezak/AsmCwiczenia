.section .data
output:
	.ascii "Hello Patryk!\nTrust me assembler is not really hard\n:)JB\n"
output_len= .-output 
.section .text

.globl _start

_start:

movl $4, %eax
movl $1, %ebx
movl $output, %ecx
movl $output_len, %edx
int $0x80

movl $1, %eax
movl $0, %ebx
int $0x80  


