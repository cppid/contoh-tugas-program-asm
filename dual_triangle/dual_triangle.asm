section .rodata
  a01 db 42
  a03 db 10
section .data
  global _start

_start:
  mov r9,5
  call tgr
  call exit
exit:
  mov rax,60
  xor rdi,rdi
  syscall
  ret
tgr:
  mov r13,r9
  call tr
  call a0b
  call td
  ret
tr:
  mov r14,r13
  mov r15,0
  call a0s
  call a0b
  dec r13
  cmp r13,0
  jg tr
  ret
td:
  inc r13
  mov r14,r13
  mov r15,0
  call a0s
  call a0b
  cmp r13,r9
  jl td
  ret
wr:
  mov rax,1
  mov rdi,1
  mov rdx,1
  syscall
  ret
a0s:
  inc r15
  mov rsi,a01
  call wr
  cmp r15,r14
  jl a0s
  ret
a0b:
  inc r15
  mov rsi,a03
  call wr
  cmp r15,r14
  jl a0b
  ret