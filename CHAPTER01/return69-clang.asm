;;; See LICENSE.TXT file for copyright and license details

;;; [COMMAND]: clang -S -O3 return69.c -o return69-clang.asm
;;; [INFO]: This output is similar from Clang, but modified for clear details

    .section	__TEXT,__text,regular,pure_instructions ; Code section
    .globl      _main           ; -- Begin function main
    .p2align    2               ; Stack allignment by 2 bytes

_main:                          ; @main
    .cfi_startproc              ; Call Frame Information (CFI) Start Directive
    mov	w0, #69                 ; Move value 69 to Register W0 (32-bit)
    ret                         ; Return value from stack
    .cfi_endproc                ; Call Frame Information (CFI) End Directive
                                ; -- End function
.subsections_via_symbols        ; Sometimes for optimizations in macOS binaries
