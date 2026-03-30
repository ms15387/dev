.globl findPaymentSum
.text
findPaymentsSum:
    push %rbp
    mov %rsp, %rbp
 
    mov $0, %rax
    mov $0, %rcx
pay_loop:
    cmp %rsi, %rcx
    jge pay_done
 
    mov 8(%rdi, %rcx, 4), %rdx
    add %rdx, %rax
 
    inc %rcx
    jmp pay_loop
pay_done:
    pop %rbp
    ret