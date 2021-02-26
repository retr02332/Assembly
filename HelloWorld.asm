; 10 = \n = 0x0a = ah = 10h y 13 = \r = 0xd = dh = 13h
; centinela = '$' == ; para terminar la declaracion hasta donde se lee
; en linux no usamos sentinelas, usamos edx numero bytes a imprimir

section .data ; sección de datos
;msg db "Hola Mundo", 0xa, 0xd, '$' ;msg para guardar el hola mundo pero puede ser cualquier nombre
msg db "Hola Mundo", 0xa, 0xd
len equ $-msg

section .text ; sección de codigo
    global _start
_start

;mov ax, 4 ; ax = 4
mov eax, 4 ; escribir
mov ebx, 1 ; escribir en la pantalla
mov ecx, msg ; escribir este valor
mov edx, len ; que tiene esta longitud de contenido
int 0x80

mov eax, 1
int 0x80