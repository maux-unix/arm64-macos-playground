;;; See LICENSE.TXT file for copyright and license details.
;;; [INFO]: This is using plain ARM64 Assembly, can be assembled using Clang
    
    .global _main               ; Declare the global main

_main:                          ; Main function/label
    mov X0, #69                 ; Set 0 in Register X0 (64-bit)
    ret                         ; Return the value of stack
