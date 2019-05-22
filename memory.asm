global main

main:
    mov eax, [number_1]
    mov ebx, [number_2]
    add eax, ebx

   
    ret

section .data
number_1 dw 10
number_2 dw 20
