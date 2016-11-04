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

# interger value 2
ldi    r24,lo8(2)
ldi    r25,hi8(2)
push   r25
push   r24

# interger value 1
ldi    r24,lo8(1)
ldi    r25,hi8(1)
push   r25
push   r24
# load a two byte variable from base+offset
ldd    r25, r19
ldd    r24, r18
# push two byte expression onto stack
push   r25
push   r24

# interger value 3
ldi    r24,lo8(3)
ldi    r25,hi8(3)
push   r25
push   r24
# load a two byte variable from base+offset
ldd    r25, r19
ldd    r24, r18
# push two byte expression onto stack
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# interger value 0
ldi    r24,lo8(0)
ldi    r25,hi8(0)
push   r25
push   r24

# interger value 3
ldi    r24,lo8(3)
ldi    r25,hi8(3)
push   r25
push   r24
# load a two byte variable from base+offset
ldd    r25, r19
ldd    r24, r18
# push two byte expression onto stack
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# color value Meggy.Color.VIOLET
ldi    r22,6
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 7
ldi    r24,lo8(7)
ldi    r25,hi8(7)
push   r25
push   r24

# interger value 1
ldi    r24,lo8(1)
ldi    r25,hi8(1)
push   r25
push   r24

# Do INT sub operation
sub    r24, r18
sbc    r25, r19
# push hi order byte first
# push two byte expression onto stack
push   r25
push   r24

# interger value 6
ldi    r24,lo8(6)
ldi    r25,hi8(6)
push   r25
push   r24

# Do INT sub operation
sub    r24, r18
sbc    r25, r19
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

# interger value 9
ldi    r24,lo8(9)
ldi    r25,hi8(9)
push   r25
push   r24

# interger value 5
ldi    r24,lo8(5)
ldi    r25,hi8(5)
push   r25
push   r24

# Do INT sub operation
sub    r24, r18
sbc    r25, r19
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

# color value Meggy.Color.BLUE
ldi    r22,5
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 3
ldi    r24,lo8(3)
ldi    r25,hi8(3)
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# interger value 2
ldi    r24,lo8(2)
ldi    r25,hi8(2)
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24
# load a two byte variable from base+offset
ldd    r25, r19
ldd    r24, r18
# push two byte expression onto stack
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# interger value 1
ldi    r24,lo8(1)
ldi    r25,hi8(1)
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24
# load a two byte variable from base+offset
ldd    r25, r19
ldd    r24, r18
# push two byte expression onto stack
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# interger value 0
ldi    r24,lo8(0)
ldi    r25,hi8(0)
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# interger value 0
ldi    r24,lo8(0)
ldi    r25,hi8(0)
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24
# load a two byte variable from base+offset
ldd    r25, r19
ldd    r24, r18
# push two byte expression onto stack
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# interger value 7
ldi    r24,lo8(7)
ldi    r25,hi8(7)
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24
# load a two byte variable from base+offset
ldd    r25, r19
ldd    r24, r18
# push two byte expression onto stack
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 3
ldi    r24,lo8(3)
ldi    r25,hi8(3)
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# interger value 2
ldi    r24,lo8(2)
ldi    r25,hi8(2)
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# Do INT sub operation
sub    r24, r18
sbc    r25, r19
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

# interger value 1
ldi    r24,lo8(1)
ldi    r25,hi8(1)
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# Do INT sub operation
sub    r24, r18
sbc    r25, r19
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

# interger value 0
ldi    r24,lo8(0)
ldi    r25,hi8(0)
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# interger value 7
ldi    r24,lo8(7)
ldi    r25,hi8(7)
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# Do INT sub operation
sub    r24, r18
sbc    r25, r19
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

# interger value 7
ldi    r24,lo8(7)
ldi    r25,hi8(7)
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24
# load a two byte variable from base+offset
ldd    r25, r19
ldd    r24, r18
# push two byte expression onto stack
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# color value Meggy.Color.YELLOW
ldi    r22,3
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 2
ldi    r24,lo8(2)
ldi    r25,hi8(2)
push   r25
push   r24

# interger value 1
ldi    r24,lo8(1)
ldi    r25,hi8(1)
push   r25
push   r24
# load a two byte variable from base+offset
ldd    r25, r19
ldd    r24, r18
# push two byte expression onto stack
push   r25
push   r24
# Negate  expression
# load a one byte expression off stack
pop    r24
neg    r24

# interger value 8
ldi    r24,lo8(8)
ldi    r25,hi8(8)
push   r25
push   r24
# load a two byte variable from base+offset
ldd    r25, r19
ldd    r24, r18
# push two byte expression onto stack
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# interger value 10
ldi    r24,lo8(10)
ldi    r25,hi8(10)
push   r25
push   r24

# interger value 5
ldi    r24,lo8(5)
ldi    r25,hi8(5)
push   r25
push   r24
# Negate  expression
# load a one byte expression off stack
pop    r24
neg    r24
# load a two byte variable from base+offset
ldd    r25, r19
ldd    r24, r18
# push two byte expression onto stack
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 0
ldi    r24,lo8(0)
ldi    r25,hi8(0)
push   r25
push   r24

# interger value 6
ldi    r24,lo8(6)
ldi    r25,hi8(6)
push   r25
push   r24
# Negate  expression
# load a one byte expression off stack
pop    r24
neg    r24
# Negate  expression
# load a one byte expression off stack
pop    r24
neg    r24

# Do INT sub operation
sub    r24, r18
sbc    r25, r19
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

# interger value 1
ldi    r24,lo8(1)
ldi    r25,hi8(1)
push   r25
push   r24
# Negate  expression
# load a one byte expression off stack
pop    r24
neg    r24

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

# interger value 10
ldi    r24,lo8(10)
ldi    r25,hi8(10)
push   r25
push   r24

# interger value 5
ldi    r24,lo8(5)
ldi    r25,hi8(5)
push   r25
push   r24
# Negate  expression
# load a one byte expression off stack
pop    r24
neg    r24
# load a two byte variable from base+offset
ldd    r25, r19
ldd    r24, r18
# push two byte expression onto stack
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# color value Meggy.Color.ORANGE
ldi    r22,2
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

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

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# Do INT sub operation
sub    r24, r18
sbc    r25, r19
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

# interger value 0
ldi    r24,lo8(0)
ldi    r25,hi8(0)
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# interger value 7
ldi    r24,lo8(7)
ldi    r25,hi8(7)
push   r25
push   r24
# load a two byte variable from base+offset
ldd    r25, r19
ldd    r24, r18
# push two byte expression onto stack
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# color value Meggy.Color.GREEN
ldi    r22,4
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 3
ldi    r24,lo8(3)
ldi    r25,hi8(3)
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# interger value 2
ldi    r24,lo8(2)
ldi    r25,hi8(2)
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

# color value Meggy.Color.WHITE
ldi    r22,7
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev


/* epilogue start */
    endLabel:
    jmp endLabel
    ret
    .size   main, .-main

