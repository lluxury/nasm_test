global main

main:
    mov eax,1
    mov ebx,2
    jmp other

    add eax,ebx
    
other:
    ret
