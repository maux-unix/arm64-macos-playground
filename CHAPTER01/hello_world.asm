;;; See LICENSE.TXT file for copyright and license details

;;; [INFO]: This is using plain ARM64 Assembly, can be assembled using Clang
    
    .global _main               ; -- Begin main function/label
    .align 2                    ; Stack Allignment for 2^2 bytes

_main:                          ; @main
    stp x29, x30, [sp, #-16]!   ; Subtract (back to) 16
    mov x29, sp                 ; Move it to stack pointer

    adrp x1, helloworld@PAGE ; Address point hello world PAGE to x1 register
    add x1, x1, helloworld@PAGEOFF ; Add the PAGEOFF
    mov	x2, #helloworld_len     ; Move the value of the length to x2
    bl _write                   ; Call write

    mov w0, wzr                 ; Set w0 to zero register (zr)
    ldp x29, x30, [sp], #16     ; Add back 16
    ret                         ; Return the value of stack

helloworld: .asciz  "Hello World!\n" ; The string
helloworld_len = .-helloworld-1      ; Calculate the length
