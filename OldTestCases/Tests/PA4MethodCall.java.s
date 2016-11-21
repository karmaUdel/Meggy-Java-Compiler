    .file  "main.java"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__tmp_reg__ = 0
__zero_reg__ = 1
    .global __do_copy_data
    .global __do_clear_bss
    .text
.global main
    .type   main, @function
main:
    push r29
    push r28
    in r28,__SP_L__
    in r29,__SP_H__
/* prologue: function */
    call _Z18MeggyJrSimpleSetupv 
    /* Need to call this so that the meggy library gets set up */

# interger value 6
ldi    r24,lo8(6)
ldi    r25,hi8(6)
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# interger value 6
ldi    r24,lo8(6)
ldi    r25,hi8(6)
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# Do MUL sub operation
MUL    r24, r18
MUL    r25, r19
# push hi order byte first
# push two byte expression onto stack
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# interger value 5
ldi    r24,lo8(5)
ldi    r25,hi8(5)
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# color value Meggy.Color.BLUE
ldi    r22,5
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 1
ldi    r24,lo8(1)
ldi    r25,hi8(1)
push   r25
push   r24

# interger value 2
ldi    r24,lo8(2)
ldi    r25,hi8(2)
push   r25
push   r24

# interger value 3
ldi    r24,lo8(3)
ldi    r25,hi8(3)
push   r25
push   r24

# interger value 1
ldi    r24,lo8(1)
ldi    r25,hi8(1)
push   r25
push   r24


/* epilogue start */
    endLabel:
    jmp endLabel
    ret
    .size   main, .-main

