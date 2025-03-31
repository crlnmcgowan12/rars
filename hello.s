.data
str:    .asciiz "Hello, World!\n"

.text
.globl main

main:
    li $v0, 4          # syscall code for print_str
    la $a0, str          # address of string to print
    syscall             # print the string

    li $v0, 10         # syscall code for exit
    syscall             # terminate program
