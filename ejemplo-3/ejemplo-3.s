
.data

mensaje: .asciz "Numero1 %d numero2 %d \r\n"

.text

.global main
.extern printf  #similar al include<stdio.h>

main:
_start:

	mov $4, %rax
	mov $5, %rbx

	#		   %rdi		   rsi  rdx
	# printf ("Numero1 %d numero2 %d", rax, rbx)

	mov $mensaje, %rdi
	mov %rax, %rsi
	mov %rbx, %rdx

	call imprimir

	addq $8, %rsp

	call salir
salir:
	#salir al sistema
	mov $60, %rax
	mov $0,%rdi
	syscall
	ret
imprimir:

	subq $8, %rsp #alineamos los datos
	# RAX se pone en 0 para indicar que necestamos 0 registro de punto flotante
	movq %rbx, %rdx #rax=0 #toca memoria
	xorq %rax, %rax #rax=0 #no toca memoria

	call printf


	ret
