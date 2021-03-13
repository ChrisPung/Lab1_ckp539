.ORIG x3000

; Christopher Pung
; Lab 1
; This program finds the sum and difference of two 8-bit unsigned
; numbers and stores the results back in memory.

; Load values.
 
    LD R0, MASK     ; MASK = x00FF
    LD R1, NUM1     ; NUM1 = x????
    LDR R3, R1, #0  ; Load memory of NUM1 into Register.
    LD R2, NUM2     ; NUM2 = x????
    LDR R4, R2, #0  ; Load memory of NUM2 into Register.
    
; Mask and Store NUM1. R5 = NUM1.

    AND R5, R0, R3  ; Mask NUM1 = x00??.
    STR R5, R1, #0  ; Store NUM1 into x3300.

; Mask and Store NUM2. R6 = NUM2.

    AND R6, R0, R4  ; Mask NUM2. = x00??.
    STR R6, R2, #0  ; Store NUM2 into x3301.

; NUM1 + NUM2.

    ADD R7, R5, R6  ; NUM1 + NUM2.
    LD R0, SUM      ; Load SUM.
    STR R7, R0, #0  ; Stores sum into x3302.

; NUM1 - NUM2.

    NOT R6, R6      ; NOT(NUM2).
    ADD R6, R6, #1  ; NOT(NUM2).
    ADD R7, R5, R6  ; Difference of NUM1 and NUM2.
    LD R0, DIFF     ; Load Difference, or DIFF.
    STR R7, R0, #0  ; Stores Difference into x3303.

; End.

    HALT

; FILL Numbers.

MASK    .FILL x00FF
NUM1    .FILL x3300
NUM2    .FILL x3301
SUM     .FILL x3302
DIFF    .FILL x3303

; End Program.

.END





