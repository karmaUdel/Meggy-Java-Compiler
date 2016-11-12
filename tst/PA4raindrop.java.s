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

#### while statement
MJ_L0:

# True/1 expression
ldi    r22, 1
# push one byte expression onto stack
push   r22

 # if not(condition)
# load a one byte expression off stack
pop    r24
ldi    r25,0
cp     r24, r25
# WANT breq MJ_L2
brne   MJ_L1
jmp    MJ_L2
MJ_L1:
# NewExp
ldi    r24, lo8(0)
ldi    r25, hi8(0)
# push object address
# push two byte expression onto stack
push   r25
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
#### function call
# put parameter values into appropriate registers
# load a one byte expression off stack
pop    r20
# load a one byte expression off stack
pop    r22
# receiver will be passed as first param
# load a two byte expression off stack
pop    r24
pop    r25
call    PA4raindroprain

# interger value 500
ldi    r24,lo8(500)
ldi    r25,hi8(500)
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

# Do MUL sub operation
muls    r24, r18
# push hi order byte first
# push two byte expression onto stack
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

# color value Meggy.Color.ORANGE
ldi    r22,2
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

# jump to while test
jmp    MJ_L0
MJ_L2:


/* epilogue start */
    endLabel:
    jmp endLabel
    ret
    .size   main, .-main

.text
.global CloudinBounds
.type  CloudinBounds, @function
CloudinBounds:
push   r29
push   r28
# make space for locals and params
ldi    r30, 0
pop    r30
pop    r30
pop    r30
pop    r30
pop    r30
pop    r30
# Copy stack pointer to frame pointer
in     r28,__SP_L__
in     r29,__SP_H__
# save off parameters
std    Y + 2, r25
std    Y + 1, r24
std    Y + 3, r22
std    Y + 4, r20
/* done with function CloudinBounds prologue */

## If statement
# Less than check expression
# load a one byte expression off stack
pop    r18
# load a one byte expression off stack
pop    r24
cp    r24, r18
breq   MJ_L8
MJ_L9:
ldi    r24, 1
jmp    MJ_L10
MJ_L8:
MJ_L10:
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
brne   MJ_L6
jmp    MJ_L5
# then label for if
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

#Else part
MJ_L5:

#Done with if else statement 
MJ_L7:
/* epilogue start for CloudinBounds */
# handle return value
# load a one byte expression off stack
pop    r24
# pop space off stack for parameters and locals
pop    r30
pop    r30
pop    r30
pop    r30
pop    r30
pop    r30
# restoring the frame pointer
pop    r28
pop    r29
ret
.size CloudinBounds, .-CloudinBounds
.text
.global Cloudrain
.type  Cloudrain, @function
Cloudrain:
push   r29
push   r28
# make space for locals and params
ldi    r30, 0
pop    r30
pop    r30
pop    r30
pop    r30
# Copy stack pointer to frame pointer
in     r28,__SP_L__
in     r29,__SP_H__
# save off parameters
std    Y + 2, r25
std    Y + 1, r24
std    Y + 3, r22
std    Y + 4, r20
/* done with function Cloudrain prologue */

## If statement
# loading the implicit this
# load a two byte variable from base+offset
ldd    r31, Y + 2
ldd    r30, Y + 1
# push two byte expression onto stack
push   r31
push   r30
#### function call
# put parameter values into appropriate registers
# load a one byte expression off stack
pop    r18
# load a one byte expression off stack
pop    r20
# load a one byte expression off stack
pop    r22
# receiver will be passed as first param
# load a two byte expression off stack
pop    r24
pop    r25
call    CloudinBounds
breq   MJ_L14
MJ_L15:
ldi    r24, 1
jmp    MJ_L16
MJ_L14:
MJ_L16:
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
brne   MJ_L12
jmp    MJ_L11
# then label for if
MJ_L12:

# color value Meggy.Color.BLUE
ldi    r22,5
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

## If statement
# loading the implicit this
# load a two byte variable from base+offset
ldd    r31, Y + 2
ldd    r30, Y + 1
# push two byte expression onto stack
push   r31
push   r30

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
#### function call
# put parameter values into appropriate registers
# load a one byte expression off stack
pop    r18
# load a one byte expression off stack
pop    r20
# load a one byte expression off stack
pop    r22
# receiver will be passed as first param
# load a two byte expression off stack
pop    r24
pop    r25
call    CloudinBounds
breq   MJ_L21
MJ_L22:
ldi    r24, 1
jmp    MJ_L23
MJ_L21:
MJ_L23:
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
brne   MJ_L19
jmp    MJ_L18
# then label for if
MJ_L19:

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

# color value Meggy.Color.DARK
ldi    r22,0
push   r22

# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

#Else part
MJ_L18:

#Done with if else statement 
MJ_L20:

# interger value 100
ldi    r24,lo8(100)
ldi    r25,hi8(100)
push   r25
push   r24

### Meggy.delay() call
# load delay parameter
# load a two byte expression off stack
pop    r24
pop    r25
call   _Z8delay_msj	
# loading the implicit this
# load a two byte variable from base+offset
ldd    r31, Y + 2
ldd    r30, Y + 1
# push two byte expression onto stack
push   r31
push   r30

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
#### function call
# put parameter values into appropriate registers
# load a one byte expression off stack
pop    r20
# load a one byte expression off stack
pop    r22
# receiver will be passed as first param
# load a two byte expression off stack
pop    r24
pop    r25
call    Cloudrain

#Else part
MJ_L11:

#Done with if else statement 
MJ_L13:
/* epilogue start for Cloudrain */
# No return value
# pop space off stack for parameters and locals
pop    r30
pop    r30
pop    r30
pop    r30
# restoring the frame pointer
pop    r28
pop    r29
ret
.size Cloudrain, .-Cloudrain
