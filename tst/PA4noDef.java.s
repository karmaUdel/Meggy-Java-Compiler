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

# NewExp
ldi    r24, lo8(0)
ldi    r25, hi8(0)

# push object address
# push two byte expression onto stack
push   r25
push   r24


# color value Meggy.Color.BLUE
ldi    r22,5
push   r22

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
pop    r18

# load a one byte expression off stack
pop    r20

# load a one byte expression off stack
pop    r22


# receiver will be passed as first param
# load a two byte expression off stack
pop    r24
pop    r25


call    PA4noDefsetP



# Tone_Literal value Meggy.Tone.C3
ldi    r24,lo8(61157)
ldi    r25,hi8(61157)
push   r25
push   r24

# interger value 1000
ldi    r24,lo8(1000)
ldi    r25,hi8(1000)
push   r25
push   r24

# Code for MeggySetPixel
pop    r22
pop    r23
pop    r24
pop    r25
call   _Z10Tone_Startjj


/* epilogue start */
    endLabel:
    jmp endLabel
    ret
    .size   main, .-main



.text
.global CsetP
.type  CsetP, @function
CsetP:
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

/* done with function CsetP prologue */



/* epilogue start for CsetP */
# No return value

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
.size CsetP, .-CsetP


.text
.global CsetP2
.type  CsetP2, @function
CsetP2:
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

/* done with function CsetP2 prologue */


# Code for MeggySetPixel
pop    r20
pop    r22
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev



/* epilogue start for CsetP2 */
# No return value

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
.size CsetP2, .-CsetP2




