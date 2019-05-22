global main

main:
    mov ebx, 1
    mov ecx, 2
    add ebx, ecx

    mov [tmp], ebx
    mov eax, [tmp]
   
    ret

section .data
tmp dw 0
