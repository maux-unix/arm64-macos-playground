;;; See LICENSE.TXT file for copyright and license details.

;;; [INFO]: This is using plain ARM64 Assembly, can be assembled using Clang
    
    .global _main               ; Declare the global main

_main:                          ; Main function/label
    mov w0, #69                 ; Set 69 in Register w0 (32-bit)
    ret                         ; Return the value of stack
