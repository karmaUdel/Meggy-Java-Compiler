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

# Do MUL sub operation
MUL    r24, r18
MUL    r25, r19
# push hi order byte first
# push two byte expression onto stack
push   r25
push   r24

# interger value 0
ldi    r24,lo8(0)
ldi    r25,hi8(0)
push   r25
push   r24
# load a two byte variable from base+offset
ldd    r25, r19
ldd    r24, r18
# push two byte expression onto stack
push   r25
push   r24

# interger value 0
ldi    r24,lo8(0)
ldi    r25,hi8(0)
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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
push   r25
push   r24

# interger value 3
ldi    r24,lo8(3)
ldi    r25,hi8(3)
push   r25
push   r24

# Do INT sub operation
sub    r24, r18
sbc    r25, r19
# push hi order byte first
# push two byte expression onto stack
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

#### while statement
MJ_L1:

# True/1 expression
ldi    r22, 1
# push one byte expression onto stack
push   r22

 # if not(condition)
# load a one byte expression off stack
pop    r24
ldi    r25,0
cp     r24, r25
# WANT breq MJ_L3
brne   MJ_L2
jmp    MJ_L3
MJ_L2:

## If statement

### MeggyCheckButton
call    _Z16CheckButtonsDownv
lds    r24,Button_Up
# if button value is zero, push 0 else push 1
tst    r24

### MeggyCheckButton
call    _Z16CheckButtonsDownv
lds    r24,Button_Right
# if button value is zero, push 0 else push 1
tst    r24
# Not  expression
# load a one byte expression off stack
pop    r24
com    r24
# And check expression
# load a one byte expression off stack
pop    r18
# load a one byte expression off stack
pop    r24
AND    r24, r18
breq   MJ_L7
MJ_L8:
ldi    r24, 1
jmp    MJ_L9
MJ_L7:
MJ_L9:
# push one byte expression onto stack
push   r24
# load condition and branch if false
# load a one byte expression off stack
pop    r24
#load zero into reg
ldi    r25, 0
#use cp to set SREG
cp     r24, r25
#WANT breq MJ_L3
brne   MJ_L5
jmp    MJ_L4
# then label for if
MJ_L5:

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

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

#Else part
MJ_L4:

## If statement

### MeggyCheckButton
call    _Z16CheckButtonsDownv
lds    r24,Button_Up
# if button value is zero, push 0 else push 1
tst    r24

### MeggyCheckButton
call    _Z16CheckButtonsDownv
lds    r24,Button_Right
# if button value is zero, push 0 else push 1
tst    r24
# And check expression
# load a one byte expression off stack
pop    r18
# load a one byte expression off stack
pop    r24
AND    r24, r18
breq   MJ_L45
MJ_L46:
ldi    r24, 1
jmp    MJ_L47
MJ_L45:
MJ_L47:
# push one byte expression onto stack
push   r24
# load condition and branch if false
# load a one byte expression off stack
pop    r24
#load zero into reg
ldi    r25, 0
#use cp to set SREG
cp     r24, r25
#WANT breq MJ_L3
brne   MJ_L43
jmp    MJ_L42
# then label for if
MJ_L43:

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

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

#Else part
MJ_L42:

## If statement

### MeggyCheckButton
call    _Z16CheckButtonsDownv
lds    r24,Button_Down
# if button value is zero, push 0 else push 1
tst    r24
breq   MJ_L83
MJ_L84:
ldi    r24, 1
jmp    MJ_L85
MJ_L83:
MJ_L85:
# push one byte expression onto stack
push   r24
# load condition and branch if false
# load a one byte expression off stack
pop    r24
#load zero into reg
ldi    r25, 0
#use cp to set SREG
cp     r24, r25
#WANT breq MJ_L3
brne   MJ_L81
jmp    MJ_L80
# then label for if
MJ_L81:

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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

#Else part
MJ_L80:

## If statement

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

### Meggy.getPixel(x,y) call
# load a one byte expression off stack
pop    r22
 # load a one byte expression off stack
pop    r24
call   _Z6ReadPxhh
# push one byte expression onto stack
push   r24 

# color value Meggy.Color.RED
ldi    r22,1
push   r22
# equality check expression
# load a one byte expression off stack
pop    r18
# load a one byte expression off stack
pop    r24
cp    r24, r18
breq   MJ_L121
MJ_L122:
ldi    r24, 1
jmp    MJ_L123
MJ_L121:
MJ_L123:
# push one byte expression onto stack
push   r24
# load condition and branch if false
# load a one byte expression off stack
pop    r24
#load zero into reg
ldi    r25, 0
#use cp to set SREG
cp     r24, r25
#WANT breq MJ_L3
brne   MJ_L119
jmp    MJ_L118
# then label for if
MJ_L119:

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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

#Else part
MJ_L118:

## If statement

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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

### Meggy.getPixel(x,y) call
# load a one byte expression off stack
pop    r22
 # load a one byte expression off stack
pop    r24
call   _Z6ReadPxhh
# push one byte expression onto stack
push   r24 

# color value Meggy.Color.RED
ldi    r22,1
push   r22
# equality check expression
# load a one byte expression off stack
pop    r18
# load a one byte expression off stack
pop    r24
cp    r24, r18
breq   MJ_L157
MJ_L158:
ldi    r24, 1
jmp    MJ_L159
MJ_L157:
MJ_L159:
# push one byte expression onto stack
push   r24
# load condition and branch if false
# load a one byte expression off stack
pop    r24
#load zero into reg
ldi    r25, 0
#use cp to set SREG
cp     r24, r25
#WANT breq MJ_L3
brne   MJ_L155
jmp    MJ_L154
# then label for if
MJ_L155:

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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
push   r25
push   r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push   r24

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

#Else part
MJ_L154:

## If statement

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

### Meggy.getPixel(x,y) call
# load a one byte expression off stack
pop    r22
 # load a one byte expression off stack
pop    r24
call   _Z6ReadPxhh
# push one byte expression onto stack
push   r24 

# color value Meggy.Color.RED
ldi    r22,1
push   r22
# equality check expression
# load a one byte expression off stack
pop    r18
# load a one byte expression off stack
pop    r24
cp    r24, r18
breq   MJ_L193
MJ_L194:
ldi    r24, 1
jmp    MJ_L195
MJ_L193:
MJ_L195:
# push one byte expression onto stack
push   r24
# load condition and branch if false
# load a one byte expression off stack
pop    r24
#load zero into reg
ldi    r25, 0
#use cp to set SREG
cp     r24, r25
#WANT breq MJ_L3
brne   MJ_L191
jmp    MJ_L190
# then label for if
MJ_L191:

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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 4
ldi    r24,lo8(4)
ldi    r25,hi8(4)
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

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

# color value Meggy.Color.RED
ldi    r22,1
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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# interger value 256
ldi    r24,lo8(256)
ldi    r25,hi8(256)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

#Else part
MJ_L190:

#Done with if else statement 
MJ_L192:

#Done with if else statement 
MJ_L156:

#Done with if else statement 
MJ_L120:

#Done with if else statement 
MJ_L82:

#Done with if else statement 
MJ_L44:

#Done with if else statement 
MJ_L6:

# interger value 1000
ldi    r24,lo8(1000)
ldi    r25,hi8(1000)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	

# jump to while test
jmp    MJ_L1
MJ_L3:


/* epilogue start */
    endLabel:
    jmp endLabel
    ret
    .size   main, .-main

