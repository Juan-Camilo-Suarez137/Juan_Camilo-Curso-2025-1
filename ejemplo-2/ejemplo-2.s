
.data
mensaje: .asciz "%ld"

.text
.global main
.extern printf # Indico que quiero utilizar la funcion printf de libc


main:

	subq $8, %rsp	#Alineacion de datos

        mov $4, %rax   #rax = 4
        mov $5, %rbx   #rbx = 5
        add %rbx, %rax  #rax = rax +rbx

	#Bloque de iompresion
	#printf("%ld \n",rax);
	#	rdi  ,  rsi

	movq $mensaje, %rdi
	movq %rax, %rsi
	xorq %rax, %rax
	call printf

	addq $8, %rsp	# Alineacion de datos original

	#Salir al sistema
        mov $60, %rax  #indico que vamos a usar la funcion  sys_exit
        mov $0, %rdi   #indico que el parametro tiene un valor de 0
        syscall        #no es parte de ensamblador pero llama a las funciones
