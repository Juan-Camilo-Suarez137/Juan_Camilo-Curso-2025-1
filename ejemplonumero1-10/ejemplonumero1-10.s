.data
mensaje: .asciz "%ld\n"

.text
.global main
.extern printf # Usamos la función printf de libc

main:
   subq $8, %rsp # Alineamos la pila para llamadas a funciones

    mov $1, %rax   # Inicializamos rax con 1

loop:
    cmp $11, %rax  # Comparamos si rax es menor o igual a 10
    jg salir       # Si rax > 10, salimos
    
    lea mensaje(%rip), %rdi  # Cargamos la dirección del mensaje
    movq $mensaje, %rdi  # Dirección del mensaje
    movq %rax, %rsi      # Número a imprimir
    xorq %rax, %rax      # Limpiamos rax para printf
    call printf          # Llamamos a printf
    
    inc %rax             # Incrementamos rax
    jmp loop             # Repetimos el proceso

salir:
    addq $8, %rsp   # Restauramos la alineación

    mov $60, %rax  # Llamamos a sys_exit
    xorq %rdi, %rdi # Código de salida 0
    syscall         # Salimos
