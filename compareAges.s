.globl compareAges
.text
compareAges:
    push %rbp
    mov %rsp, %rbp
 
    mov 4(%rdi), %rax
    mov 4(%rsi), %rcx
 
    cmp %rcx, %rax
    jne not_equal
equal:
    mov $1, %rax
    pop %rbp
    ret
not_equal:
    mov $0, %rax
    pop %rbp
    ret