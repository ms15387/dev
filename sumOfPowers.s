.globl sumOfPowers
sumOfPowers:
    push %rbp
    mov %rsp, %rbp
 
    mov $0, %rax
    mov $1, %rcx
loop_start:
    cmp %rdi, %rcx
    jg loop_done
 
    mov %rcx, %rdx
    imul %rcx, %rdx
    add %rdx, %rax
 
    inc %rcx
    jmp loop_start
loop_done:
    pop %rbp
    ret