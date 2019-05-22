global main

main:
    mov eax, 50
    cmp eax, 10
    jle less_func
    sub eax, 10
    
less_func:
    ret
