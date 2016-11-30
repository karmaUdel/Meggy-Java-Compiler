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


   call    Arun




/* epilogue start */
    endLabel:
    jmp endLabel
    ret
    .size   main, .-main



   .text
   .global Bfoo
   .type  Bfoo, @function
Bfoo:
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

   /* done with function Bfoo prologue */

   
   # interger value 5
   ldi    r24,lo8(5)
   ldi    r25,hi8(5)
   push   r25
   push   r24


   /* epilogue start for Bfoo */
   # handle return value
   # load a one byte expression off stack
   pop    r24

   # pop space off stack for parameters and locals

   # restoring the frame pointer
   pop    r28
   pop    r29
   ret
   .size Bfoo, .-Bfoo


   .text
   .global Brun
   .type  Brun, @function
Brun:
   push   r29
   push   r28

   # make space for locals and params
   ldi    r30, 0
   pop    r30
   pop    r30

   # Copy stack pointer to frame pointer
   in     r28,__SP_L__
   in     r29,__SP_H__

   # save off parameters
   std    Y + 2, r25
   std    Y + 1, r24
   std    Y + 3, r23
   std    Y + 4, r22

   /* done with function Brun prologue */

   # loading the implicit this
   # load a two byte variable from base+offset
   ldd    r31, Y + 2
   ldd    r30, Y + 1

   # push two byte expression onto stack
   push   r31
   push   r30

   #### function call

   # put parameter values into appropriate registers

   # receiver will be passed as first param
   # load a two byte expression off stack
   pop    r24
   pop    r25


   call    Bfoo


   # loading the implicit this
   # load a two byte variable from base+offset
   ldd    r31, Y + 2
   ldd    r30, Y + 1

   # push two byte expression onto stack
   push   r31
   push   r30

   #### function call

   # put parameter values into appropriate registers

   # receiver will be passed as first param
   # load a two byte expression off stack
   pop    r24
   pop    r25


   call    Bfoo


   
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
   
   # color value Meggy.Color.BLUE
   ldi    r22,5
   push   r22
   
   # Code for MeggySetPixel
   pop    r20
   pop    r22
   pop    r24
   call   _Z6DrawPxhhh
   call   _Z12DisplaySlatev



   /* epilogue start for Brun */
   # No return value

   # pop space off stack for parameters and locals
   pop    r30
   pop    r30

   # restoring the frame pointer
   pop    r28
   pop    r29
   ret
   .size Brun, .-Brun




   .text
   .global AA
   .type  AA, @function
AA:
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

   /* done with function AA prologue */

   
   # interger value 5
   ldi    r24,lo8(5)
   ldi    r25,hi8(5)
   push   r25
   push   r24


   /* epilogue start for AA */
   # handle return value
   # load a one byte expression off stack
   pop    r24

   # pop space off stack for parameters and locals

   # restoring the frame pointer
   pop    r28
   pop    r29
   ret
   .size AA, .-AA


   .text
   .global Arun
   .type  Arun, @function
Arun:
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

   /* done with function Arun prologue */

   
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
   
   # color value Meggy.Color.ORANGE
   ldi    r22,2
   push   r22
   
   # Code for MeggySetPixel
   pop    r20
   pop    r22
   pop    r24
   call   _Z6DrawPxhhh
   call   _Z12DisplaySlatev



   /* epilogue start for Arun */
   # No return value

   # pop space off stack for parameters and locals

   # restoring the frame pointer
   pop    r28
   pop    r29
   ret
   .size Arun, .-Arun




