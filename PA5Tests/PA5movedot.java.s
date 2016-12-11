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

   #### function call

   # put parameter values into appropriate registers

   # receiver will be passed as first param
   # load a two byte expression off stack
   pop    r24
   pop    r25


   call    Dotrun




/* epilogue start */
    endLabel:
    jmp endLabel
    ret
    .size   main, .-main



   .text
   .global DotinBounds
   .type  DotinBounds, @function
DotinBounds:
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
   std    Y + 3, r22

   /* done with function DotinBounds prologue */

   
   # interger value 0
   ldi    r24,lo8(0)
   ldi    r25,hi8(0)
   push   r25
   push   r24
   
   # interger value 1
   ldi    r24,lo8(1)
   ldi    r25,hi8(1)
   push   r25
   push   r24
   
   # push two byte expression onto stack
   pop   r18
   pop   r19
   # push two byte expression onto stack
   pop   r24
   pop   r25
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
   
   # Less than check expression
   # load a one byte expression off stack
   pop    r18
   pop    r19
   
   # load a one byte expression off stack
   pop    r24
   pop    r25
   cp    r24, r18
   cpc    r25, r19
   
   
   # interger value 8
   ldi    r24,lo8(8)
   ldi    r25,hi8(8)
   push   r25
   push   r24

   # Casting int to byte by popping
   # 2 bytes off stack and only pushing low order bits
   # back on.  Low order bits are on top of stack.
   pop    r24
   pop    r25
   push   r24
   
   # Less than check expression
   # load a one byte expression off stack
   pop    r18
   pop    r19
   
   # load a one byte expression off stack
   pop    r24
   pop    r25
   cp    r24, r18
   cpc    r25, r19
   
   
   # load a one byte expression off stack
   pop    r24
   
   #load zero into reg
   ldi    r25, 0
   
   #use cp to set SREG
   cp     r24, r25
   
   # interger value 0
   ldi    r24,lo8(0)
   ldi    r25,hi8(0)
   push   r25
   push   r24
   
   # interger value 1
   ldi    r24,lo8(1)
   ldi    r25,hi8(1)
   push   r25
   push   r24
   
   # push two byte expression onto stack
   pop   r18
   pop   r19
   # push two byte expression onto stack
   pop   r24
   pop   r25
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
   
   # Less than check expression
   # load a one byte expression off stack
   pop    r18
   pop    r19
   
   # load a one byte expression off stack
   pop    r24
   pop    r25
   cp    r24, r18
   cpc    r25, r19
   
   
   # load a one byte expression off stack
   pop    r24
   
   #load zero into reg
   ldi    r25, 0
   
   #use cp to set SREG
   cp     r24, r25
   
   # interger value 8
   ldi    r24,lo8(8)
   ldi    r25,hi8(8)
   push   r25
   push   r24

   # Casting int to byte by popping
   # 2 bytes off stack and only pushing low order bits
   # back on.  Low order bits are on top of stack.
   pop    r24
   pop    r25
   push   r24
   
   # Less than check expression
   # load a one byte expression off stack
   pop    r18
   pop    r19
   
   # load a one byte expression off stack
   pop    r24
   pop    r25
   cp    r24, r18
   cpc    r25, r19
   
   
   # load a one byte expression off stack
   pop    r24
   
   #load zero into reg
   ldi    r25, 0
   
   #use cp to set SREG
   cp     r24, r25


   /* epilogue start for DotinBounds */
   # handle return value
   # load a one byte expression off stack
   pop    r24

   # pop space off stack for parameters and locals
   pop    r30
   pop    r30
   pop    r30
   pop    r30

   # restoring the frame pointer
   pop    r28
   pop    r29
   ret
   .size DotinBounds, .-DotinBounds


   .text
   .global Dotmovedot
   .type  Dotmovedot, @function
Dotmovedot:
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
   std    Y + 3, r22

   /* done with function Dotmovedot prologue */

   
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
   pop    r20

   # load a one byte expression off stack
   pop    r22


   # receiver will be passed as first param
   # load a two byte expression off stack
   pop    r24
   pop    r25


   call    DotinBounds


   breq   MJ_L3
   MJ_L4:
   ldi    r24, 1
   jmp    MJ_L5
   MJ_L3:
   MJ_L5:
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
   brne   MJ_L1
   jmp    MJ_L0
   # then label for if
   MJ_L1:
   
   # Code for MeggySetPixel
   pop    r20
   pop    r22
   pop    r24
   call   _Z6DrawPxhhh
   call   _Z12DisplaySlatev
   
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
   MJ_L0:
   
   #Done with if else statement 
   MJ_L2:



   /* epilogue start for Dotmovedot */
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
   .size Dotmovedot, .-Dotmovedot


   .text
   .global Dotrun
   .type  Dotrun, @function
Dotrun:
   push   r29
   push   r28

   # make space for locals and params
   ldi    r30, 0

   # Copy stack pointer to frame pointer
   in     r28,__SP_L__
   in     r29,__SP_H__

   # save off parameters
   std    Y + 2, r25
   std    Y + 1, r24

   /* done with function Dotrun prologue */


   #### while statement
   MJ_L8:
   
   # True/1 expression
   ldi    r22, 1
   # push one byte expression onto stack
   push   r22

   # if not(condition)
   # load a one byte expression off stack
   pop    r24
   ldi    r25,0
   cp     r24, r25
   # WANT breq MJ_L10
   brne   MJ_L9
   jmp    MJ_L10
   MJ_L9:
   
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
   
   ## If statement

   ### MeggyCheckButton
   call    _Z16CheckButtonsDownv
   lds    r24,Button_Right
   # if button value is zero, push 0 else push 1
   tst    r24
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
   
   # interger value 50
   ldi    r24,lo8(50)
   ldi    r25,hi8(50)
   push   r25
   push   r24
   
   # Code for MeggySetPixel
   pop    r22
   pop    r23
   pop    r24
   pop    r25
   call   _Z10Tone_Startjj
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
   
   # push two byte expression onto stack
   pop   r18
   pop   r19
   # push two byte expression onto stack
   pop   r24
   pop   r25
   # load a two byte variable from base+offset
   add    r25, r19
   adc    r24, r18
   
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


   call    Dotmovedot


   
   #Else part
   MJ_L11:
   
   #Done with if else statement 
   MJ_L13:
   
   ## If statement

   ### MeggyCheckButton
   call    _Z16CheckButtonsDownv
   lds    r24,Button_Left
   # if button value is zero, push 0 else push 1
   tst    r24
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
   
   # interger value 50
   ldi    r24,lo8(50)
   ldi    r25,hi8(50)
   push   r25
   push   r24
   
   # Code for MeggySetPixel
   pop    r22
   pop    r23
   pop    r24
   pop    r25
   call   _Z10Tone_Startjj
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
   
   # push two byte expression onto stack
   pop   r18
   pop   r19
   # push two byte expression onto stack
   pop   r24
   pop   r25
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


   call    Dotmovedot


   
   #Else part
   MJ_L18:
   
   #Done with if else statement 
   MJ_L20:
   
   ## If statement

   ### MeggyCheckButton
   call    _Z16CheckButtonsDownv
   lds    r24,Button_Down
   # if button value is zero, push 0 else push 1
   tst    r24
   breq   MJ_L28
   MJ_L29:
   ldi    r24, 1
   jmp    MJ_L30
   MJ_L28:
   MJ_L30:
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
   brne   MJ_L26
   jmp    MJ_L25
   # then label for if
   MJ_L26:
   
   # interger value 50
   ldi    r24,lo8(50)
   ldi    r25,hi8(50)
   push   r25
   push   r24
   
   # Code for MeggySetPixel
   pop    r22
   pop    r23
   pop    r24
   pop    r25
   call   _Z10Tone_Startjj
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
   
   # push two byte expression onto stack
   pop   r18
   pop   r19
   # push two byte expression onto stack
   pop   r24
   pop   r25
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


   call    Dotmovedot


   
   #Else part
   MJ_L25:
   
   #Done with if else statement 
   MJ_L27:
   
   ## If statement

   ### MeggyCheckButton
   call    _Z16CheckButtonsDownv
   lds    r24,Button_Up
   # if button value is zero, push 0 else push 1
   tst    r24
   breq   MJ_L35
   MJ_L36:
   ldi    r24, 1
   jmp    MJ_L37
   MJ_L35:
   MJ_L37:
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
   brne   MJ_L33
   jmp    MJ_L32
   # then label for if
   MJ_L33:
   
   # interger value 50
   ldi    r24,lo8(50)
   ldi    r25,hi8(50)
   push   r25
   push   r24
   
   # Code for MeggySetPixel
   pop    r22
   pop    r23
   pop    r24
   pop    r25
   call   _Z10Tone_Startjj
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
   
   # push two byte expression onto stack
   pop   r18
   pop   r19
   # push two byte expression onto stack
   pop   r24
   pop   r25
   # load a two byte variable from base+offset
   add    r25, r19
   adc    r24, r18
   
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


   call    Dotmovedot


   
   #Else part
   MJ_L32:
   
   #Done with if else statement 
   MJ_L34:

   # jump to while test
   jmp    MJ_L8
   MJ_L10:

   
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

   
   # color value Meggy.Color.ORANGE
   ldi    r22,2
   push   r22

   
   # Tone_Literal value Meggy.Tone.C3
   ldi    r24,lo8(61157)
   ldi    r25,hi8(61157)
   push   r25
   push   r24



   /* epilogue start for Dotrun */
   # No return value

   # pop space off stack for parameters and locals

   # restoring the frame pointer
   pop    r28
   pop    r29
   ret
   .size Dotrun, .-Dotrun




