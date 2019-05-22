global main

main:
    mov eax, 10

    cmp eax, 100
    jle l_O_e_100
    sub eax, 20
    
l_O_e_100:
    cmp eax, 10
    jg g_10
    add eax, 10 

g_10:
    add eax, 1
    ret
