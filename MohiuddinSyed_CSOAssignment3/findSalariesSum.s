.globl findSalariesSum
.text
findSalariesSum:
    push %rbp
    mov %rsp, %rbp
 
    mov $0, %rax
    cmp $0, %rsi
    jle sal_done
sal_loop:
    mov 8(%rdi), %rdx
    add %rdx, %rax
 
    add $12, %rdi
    dec %rsi
    jnz sal_loop
sal_done:
    pop %rbp
    ret