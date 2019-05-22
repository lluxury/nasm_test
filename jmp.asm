global main

main:
    ;mov eax, 1
    mov eax, 110
    cmp eax, 100
    jle more_func
    sub eax, 20
    
more_func:
    add eax, 1 
    ret
