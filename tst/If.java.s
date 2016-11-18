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


    #### if statement

    #### short-circuited && operation
    # &&: left operand

    # Load constant int 2
    ldi    r24,lo8(2)
    ldi    r25,hi8(2)
    # push two byte expression onto stack
    push   r25
    push   r24

    # Load constant int 2
    ldi    r24,lo8(2)
    ldi    r25,hi8(2)
    # push two byte expression onto stack
    push   r25
    push   r24

    # equality check expression
    # load a two byte expression off stack
    pop    r18
    pop    r19
    # load a two byte expression off stack
    pop    r24
    pop    r25
    cp    r24, r18
    cpc   r25, r19
    breq MJ_L4

    # result is false
MJ_L3:
    ldi     r24, 0
    jmp      MJ_L5

    # result is true
MJ_L4:
    ldi     r24, 1

    # store result of equal expression
MJ_L5:
    # push one byte expression onto stack
    push   r24

    # &&: if left operand is false do not eval right
    # load a one byte expression off stack
    pop    r24
    # push one byte expression onto stack
    push   r24
    # compare left exp with zero
    ldi r25, 0
    cp    r24, r25
    # Want this, breq MJ_L6
    brne  MJ_L7
    jmp   MJ_L6

MJ_L7:
    # right operand
    # load a one byte expression off stack
    pop    r24

    # Load constant int 2
    ldi    r24,lo8(2)
    ldi    r25,hi8(2)
    # push two byte expression onto stack
    push   r25
    push   r24

    # Load constant int 3
    ldi    r24,lo8(3)
    ldi    r25,hi8(3)
    # push two byte expression onto stack
    push   r25
    push   r24

    # less than expression
    # load a two byte expression off stack
    pop    r18
    pop    r19
    # load a two byte expression off stack
    pop    r24
    pop    r25
    cp    r24, r18
    cpc   r25, r19
    brlt MJ_L9

    # load false
MJ_L8:
    ldi     r24, 0
    jmp      MJ_L10

    # load true
MJ_L9:
    ldi    r24, 1

    # push result of less than
MJ_L10:
    # push one byte expression onto stack
    push   r24
    # load a one byte expression off stack
    pop    r24
    # push one byte expression onto stack
    push   r24

MJ_L6:

    # load condition and branch if false
    # load a one byte expression off stack
    pop    r24
    #load zero into reg
    ldi    r25, 0

    #use cp to set SREG
    cp     r24, r25
    #WANT breq MJ_L0
    brne   MJ_L1
    jmp    MJ_L0

    # then label for if
MJ_L1:

    # Load constant int 1
    ldi    r24,lo8(1)
    ldi    r25,hi8(1)
    # push two byte expression onto stack
    push   r25
    push   r24

    # Load constant int 6
    ldi    r24,lo8(6)
    ldi    r25,hi8(6)
    # push two byte expression onto stack
    push   r25
    push   r24
    # load a two byte expression off stack
    pop    r18
    pop    r19
    # load a two byte expression off stack
    pop    r24
    pop    r25

    # Do add operation
    add    r24, r18
    adc    r25, r19
    # push two byte expression onto stack
    push   r25
    push   r24

    # Casting int to byte by popping
    # 2 bytes off stack and only pushing low order bits
    # back on.  Low order bits are on top of stack.
    pop    r24
    pop    r25
    push   r24

    # Load constant int 5
    ldi    r24,lo8(5)
    ldi    r25,hi8(5)
    # push two byte expression onto stack
    push   r25
    push   r24

    # Load constant int 1
    ldi    r24,lo8(1)
    ldi    r25,hi8(1)
    # push two byte expression onto stack
    push   r25
    push   r24

    # neg int
    # load a two byte expression off stack
    pop    r24
    pop    r25
    ldi     r22, 0
    ldi     r23, 0
    sub     r22, r24
    sbc     r23, r25
    # push two byte expression onto stack
    push   r23
    push   r22
    # load a two byte expression off stack
    pop    r18
    pop    r19
    # load a two byte expression off stack
    pop    r24
    pop    r25

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

    # Color expression Meggy.Color.GREEN
    ldi    r22,4
    # push one byte expression onto stack
    push   r22

    ### Meggy.setPixel(x,y,color) call
    # load a one byte expression off stack
    pop    r20
    # load a one byte expression off stack
    pop    r22
    # load a one byte expression off stack
    pop    r24
    call   _Z6DrawPxhhh
    call   _Z12DisplaySlatev
    jmp    MJ_L2

    # else label for if
MJ_L0:

    # Load constant int 1
    ldi    r24,lo8(1)
    ldi    r25,hi8(1)
    # push two byte expression onto stack
    push   r25
    push   r24

    # neg int
    # load a two byte expression off stack
    pop    r24
    pop    r25
    ldi     r22, 0
    ldi     r23, 0
    sub     r22, r24
    sbc     r23, r25
    # push two byte expression onto stack
    push   r23
    push   r22

    # Casting int to byte by popping
    # 2 bytes off stack and only pushing low order bits
    # back on.  Low order bits are on top of stack.
    pop    r24
    pop    r25
    push   r24

    # Load constant int 7
    ldi    r24,lo8(7)
    ldi    r25,hi8(7)
    # push two byte expression onto stack
    push   r25
    push   r24

    # Casting int to byte by popping
    # 2 bytes off stack and only pushing low order bits
    # back on.  Low order bits are on top of stack.
    pop    r24
    pop    r25
    push   r24

    # neg byte
    # load a one byte expression off stack
    pop    r24
    tst     r24
    brlt     MJ_L11
    ldi    r25, 0
    jmp    MJ_L12
MJ_L11:
    ldi    r25, hi8(-1)
MJ_L12:
    ldi    r22, 0
    ldi    r23, 0
    sub     r22, r24
    sbc     r23, r25
    # push two byte expression onto stack
    push   r23
    push   r22

    # Casting int to byte by popping
    # 2 bytes off stack and only pushing low order bits
    # back on.  Low order bits are on top of stack.
    pop    r24
    pop    r25
    push   r24

    # MulExp
    # load a one byte expression off stack
    pop    r18
    # load a one byte expression off stack
    pop    r22
    # move one byte src into dest reg
    mov    r24, r18
    # move one byte src into dest reg
    mov    r26, r22

    # Do mul operation of two input bytes
    muls   r24, r26
    # push two byte expression onto stack
    push   r1
    push   r0
    # clear r0 and r1, thanks Brendan!
    eor    r0,r0
    eor    r1,r1

    # Casting int to byte by popping
    # 2 bytes off stack and only pushing low order bits
    # back on.  Low order bits are on top of stack.
    pop    r24
    pop    r25
    push   r24

    # Load constant int 6
    ldi    r24,lo8(6)
    ldi    r25,hi8(6)
    # push two byte expression onto stack
    push   r25
    push   r24

    # Casting int to byte by popping
    # 2 bytes off stack and only pushing low order bits
    # back on.  Low order bits are on top of stack.
    pop    r24
    pop    r25
    push   r24

    # Color expression Meggy.Color.RED
    ldi    r22,1
    # push one byte expression onto stack
    push   r22

    ### Meggy.setPixel(x,y,color) call
    # load a one byte expression off stack
    pop    r20
    # load a one byte expression off stack
    pop    r22
    # load a one byte expression off stack
    pop    r24
    call   _Z6DrawPxhhh
    call   _Z12DisplaySlatev

    # done label for if
MJ_L2:


/* epilogue start */
    endLabel:
    jmp endLabel
    ret
    .size   main, .-main


