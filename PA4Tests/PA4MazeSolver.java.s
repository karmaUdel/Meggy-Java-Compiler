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


   call    Solver1run




/* epilogue start */
    endLabel:
    jmp endLabel
    ret
    .size   main, .-main



   .text
   .global Solver1initMaze1
   .type  Solver1initMaze1, @function
Solver1initMaze1:
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

   /* done with function Solver1initMaze1 prologue */



   /* epilogue start for Solver1initMaze1 */
   # No return value

   # pop space off stack for parameters and locals

   # restoring the frame pointer
   pop    r28
   pop    r29
   ret
   .size Solver1initMaze1, .-Solver1initMaze1


   .text
   .global Solver1initMaze2
   .type  Solver1initMaze2, @function
Solver1initMaze2:
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

   /* done with function Solver1initMaze2 prologue */

   # loading the implicit this
   # load a two byte variable from base+offset
   ldd    r31, Y + 2
   ldd    r30, Y + 1

   # push two byte expression onto stack
   push   r31
   push   r30

   
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


   call    Solver1mazeRow



   # loading the implicit this
   # load a two byte variable from base+offset
   ldd    r31, Y + 2
   ldd    r30, Y + 1

   # push two byte expression onto stack
   push   r31
   push   r30

   
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


   call    Solver1mazeRow



   # loading the implicit this
   # load a two byte variable from base+offset
   ldd    r31, Y + 2
   ldd    r30, Y + 1

   # push two byte expression onto stack
   push   r31
   push   r30

   
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


   call    Solver1mazeCol



   # loading the implicit this
   # load a two byte variable from base+offset
   ldd    r31, Y + 2
   ldd    r30, Y + 1

   # push two byte expression onto stack
   push   r31
   push   r30

   
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


   call    Solver1mazeCol





   /* epilogue start for Solver1initMaze2 */
   # No return value

   # pop space off stack for parameters and locals

   # restoring the frame pointer
   pop    r28
   pop    r29
   ret
   .size Solver1initMaze2, .-Solver1initMaze2


   .text
   .global Solver1initMazeCool
   .type  Solver1initMazeCool, @function
Solver1initMazeCool:
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

   /* done with function Solver1initMazeCool prologue */

   # loading the implicit this
   # load a two byte variable from base+offset
   ldd    r31, Y + 2
   ldd    r30, Y + 1

   # push two byte expression onto stack
   push   r31
   push   r30

   
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


   call    Solver1mazeRow



   # loading the implicit this
   # load a two byte variable from base+offset
   ldd    r31, Y + 2
   ldd    r30, Y + 1

   # push two byte expression onto stack
   push   r31
   push   r30

   
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


   call    Solver1mazeRow



   # loading the implicit this
   # load a two byte variable from base+offset
   ldd    r31, Y + 2
   ldd    r30, Y + 1

   # push two byte expression onto stack
   push   r31
   push   r30

   
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


   call    Solver1mazeCol



   # loading the implicit this
   # load a two byte variable from base+offset
   ldd    r31, Y + 2
   ldd    r30, Y + 1

   # push two byte expression onto stack
   push   r31
   push   r30

   
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


   call    Solver1mazeCol



   # loading the implicit this
   # load a two byte variable from base+offset
   ldd    r31, Y + 2
   ldd    r30, Y + 1

   # push two byte expression onto stack
   push   r31
   push   r30

   
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


   call    Solver1mazeRow



   # loading the implicit this
   # load a two byte variable from base+offset
   ldd    r31, Y + 2
   ldd    r30, Y + 1

   # push two byte expression onto stack
   push   r31
   push   r30

   
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


   call    Solver1mazeCol



   # loading the implicit this
   # load a two byte variable from base+offset
   ldd    r31, Y + 2
   ldd    r30, Y + 1

   # push two byte expression onto stack
   push   r31
   push   r30

   
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


   call    Solver1mazeRow



   
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
   
   # color value Meggy.Color.VIOLET
   ldi    r22,6
   push   r22
   
   # Code for MeggySetPixel
   pop    r20
   pop    r22
   pop    r24
   call   _Z6DrawPxhhh
   call   _Z12DisplaySlatev



   /* epilogue start for Solver1initMazeCool */
   # No return value

   # pop space off stack for parameters and locals

   # restoring the frame pointer
   pop    r28
   pop    r29
   ret
   .size Solver1initMazeCool, .-Solver1initMazeCool


   .text
   .global Solver1run
   .type  Solver1run, @function
Solver1run:
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

   /* done with function Solver1run prologue */

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


   call    Solver1initMazeCool



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
   #### function call

   # put parameter values into appropriate registers
   # load a one byte expression off stack
   pop    r16

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


   call    Solver1move





   /* epilogue start for Solver1run */
   # No return value

   # pop space off stack for parameters and locals

   # restoring the frame pointer
   pop    r28
   pop    r29
   ret
   .size Solver1run, .-Solver1run


   .text
   .global Solver1inBounds
   .type  Solver1inBounds, @function
Solver1inBounds:
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

   /* done with function Solver1inBounds prologue */

   
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


   /* epilogue start for Solver1inBounds */
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
   .size Solver1inBounds, .-Solver1inBounds


   .text
   .global Solver1isDark
   .type  Solver1isDark, @function
Solver1isDark:
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

   /* done with function Solver1isDark prologue */

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


   call    Solver1inBounds


   
   ### Meggy.getPixel(x,y) call
   # load a one byte expression off stack
   pop    r22
   # load a one byte expression off stack
   pop    r24
   call   _Z6ReadPxhh
   # push one byte expression onto stack
   push   r24 
   
   # color value Meggy.Color.DARK
   ldi    r22,0
   push   r22
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


   /* epilogue start for Solver1isDark */
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
   .size Solver1isDark, .-Solver1isDark


   .text
   .global Solver1isBLUE
   .type  Solver1isBLUE, @function
Solver1isBLUE:
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

   /* done with function Solver1isBLUE prologue */

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


   call    Solver1inBounds


   
   ### Meggy.getPixel(x,y) call
   # load a one byte expression off stack
   pop    r22
   # load a one byte expression off stack
   pop    r24
   call   _Z6ReadPxhh
   # push one byte expression onto stack
   push   r24 
   
   # color value Meggy.Color.BLUE
   ldi    r22,5
   push   r22
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


   /* epilogue start for Solver1isBLUE */
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
   .size Solver1isBLUE, .-Solver1isBLUE


   .text
   .global Solver1findTargetOrMove
   .type  Solver1findTargetOrMove, @function
Solver1findTargetOrMove:
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
   std    Y + 3, r22
   std    Y + 3, r22

   /* done with function Solver1findTargetOrMove prologue */

   
   ## If statement
   # Less than check expression
   # load a one byte expression off stack
   pop    r18
   pop    r19
   
   # load a one byte expression off stack
   pop    r24
   pop    r25
   cp    r24, r18
   cpc    r25, r19
   
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
   breq   MJ_L4
   MJ_L5:
   ldi    r24, 1
   jmp    MJ_L6
   MJ_L4:
   MJ_L6:
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
   brne   MJ_L2
   jmp    MJ_L1
   # then label for if
   MJ_L2:
   
   # color value Meggy.Color.BLUE
   ldi    r22,5
   push   r22
   
   # Code for MeggySetPixel
   pop    r20
   pop    r22
   pop    r24
   call   _Z6DrawPxhhh
   call   _Z12DisplaySlatev
   
   #Else part
   MJ_L1:
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
   pop    r16

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


   call    Solver1move


   
   #Done with if else statement 
   MJ_L3:



   /* epilogue start for Solver1findTargetOrMove */
   # No return value

   # pop space off stack for parameters and locals
   pop    r30
   pop    r30
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
   .size Solver1findTargetOrMove, .-Solver1findTargetOrMove


   .text
   .global Solver1move
   .type  Solver1move, @function
Solver1move:
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
   std    Y + 3, r22
   std    Y + 3, r22

   /* done with function Solver1move prologue */

   
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


   call    Solver1isDark


   breq   MJ_L12
   MJ_L13:
   ldi    r24, 1
   jmp    MJ_L14
   MJ_L12:
   MJ_L14:
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
   brne   MJ_L10
   jmp    MJ_L9
   # then label for if
   MJ_L10:
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
   pop    r16

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


   call    Solver1findTargetOrMove


   
   #Else part
   MJ_L9:
   
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


   call    Solver1isDark


   breq   MJ_L18
   MJ_L19:
   ldi    r24, 1
   jmp    MJ_L20
   MJ_L18:
   MJ_L20:
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
   brne   MJ_L16
   jmp    MJ_L15
   # then label for if
   MJ_L16:
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
   pop    r16

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


   call    Solver1findTargetOrMove


   
   #Else part
   MJ_L15:
   
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


   call    Solver1isDark


   breq   MJ_L24
   MJ_L25:
   ldi    r24, 1
   jmp    MJ_L26
   MJ_L24:
   MJ_L26:
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
   brne   MJ_L22
   jmp    MJ_L21
   # then label for if
   MJ_L22:
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
   pop    r16

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


   call    Solver1findTargetOrMove


   
   #Else part
   MJ_L21:
   
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


   call    Solver1isDark


   breq   MJ_L30
   MJ_L31:
   ldi    r24, 1
   jmp    MJ_L32
   MJ_L30:
   MJ_L32:
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
   brne   MJ_L28
   jmp    MJ_L27
   # then label for if
   MJ_L28:
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
   pop    r16

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


   call    Solver1findTargetOrMove


   
   #Else part
   MJ_L27:
   
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


   call    Solver1isBLUE


   breq   MJ_L36
   MJ_L37:
   ldi    r24, 1
   jmp    MJ_L38
   MJ_L36:
   MJ_L38:
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
   brne   MJ_L34
   jmp    MJ_L33
   # then label for if
   MJ_L34:
   
   # color value Meggy.Color.YELLOW
   ldi    r22,3
   push   r22
   
   # Code for MeggySetPixel
   pop    r20
   pop    r22
   pop    r24
   call   _Z6DrawPxhhh
   call   _Z12DisplaySlatev
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
   pop    r16

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


   call    Solver1move


   
   #Else part
   MJ_L33:
   
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


   call    Solver1isBLUE


   breq   MJ_L43
   MJ_L44:
   ldi    r24, 1
   jmp    MJ_L45
   MJ_L43:
   MJ_L45:
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
   brne   MJ_L41
   jmp    MJ_L40
   # then label for if
   MJ_L41:
   
   # color value Meggy.Color.YELLOW
   ldi    r22,3
   push   r22
   
   # Code for MeggySetPixel
   pop    r20
   pop    r22
   pop    r24
   call   _Z6DrawPxhhh
   call   _Z12DisplaySlatev
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
   pop    r16

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


   call    Solver1move


   
   #Else part
   MJ_L40:
   
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


   call    Solver1isBLUE


   breq   MJ_L50
   MJ_L51:
   ldi    r24, 1
   jmp    MJ_L52
   MJ_L50:
   MJ_L52:
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
   brne   MJ_L48
   jmp    MJ_L47
   # then label for if
   MJ_L48:
   
   # color value Meggy.Color.YELLOW
   ldi    r22,3
   push   r22
   
   # Code for MeggySetPixel
   pop    r20
   pop    r22
   pop    r24
   call   _Z6DrawPxhhh
   call   _Z12DisplaySlatev
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

   # Casting int to byte by popping
   # 2 bytes off stack and only pushing low order bits
   # back on.  Low order bits are on top of stack.
   pop    r24
   pop    r25
   push   r24
   #### function call

   # put parameter values into appropriate registers
   # load a one byte expression off stack
   pop    r16

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


   call    Solver1move


   
   #Else part
   MJ_L47:
   
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


   call    Solver1isBLUE


   breq   MJ_L57
   MJ_L58:
   ldi    r24, 1
   jmp    MJ_L59
   MJ_L57:
   MJ_L59:
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
   brne   MJ_L55
   jmp    MJ_L54
   # then label for if
   MJ_L55:
   
   # color value Meggy.Color.YELLOW
   ldi    r22,3
   push   r22
   
   # Code for MeggySetPixel
   pop    r20
   pop    r22
   pop    r24
   call   _Z6DrawPxhhh
   call   _Z12DisplaySlatev
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
   pop    r16

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


   call    Solver1move


   
   #Else part
   MJ_L54:
   
   #Done with if else statement 
   MJ_L56:
   
   #Done with if else statement 
   MJ_L49:
   
   #Done with if else statement 
   MJ_L42:
   
   #Done with if else statement 
   MJ_L35:
   
   #Done with if else statement 
   MJ_L29:
   
   #Done with if else statement 
   MJ_L23:
   
   #Done with if else statement 
   MJ_L17:
   
   #Done with if else statement 
   MJ_L11:



   /* epilogue start for Solver1move */
   # No return value

   # pop space off stack for parameters and locals
   pop    r30
   pop    r30
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
   .size Solver1move, .-Solver1move


   .text
   .global Solver1mazeRow
   .type  Solver1mazeRow, @function
Solver1mazeRow:
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
   std    Y + 3, r22
   std    Y + 3, r22

   /* done with function Solver1mazeRow prologue */

   
   # color value Meggy.Color.VIOLET
   ldi    r22,6
   push   r22
   
   # Code for MeggySetPixel
   pop    r20
   pop    r22
   pop    r24
   call   _Z6DrawPxhhh
   call   _Z12DisplaySlatev

   
   ## If statement
   
   # Less than check expression
   # load a one byte expression off stack
   pop    r18
   pop    r19
   
   # load a one byte expression off stack
   pop    r24
   pop    r25
   cp    r24, r18
   cpc    r25, r19
   
   breq   MJ_L65
   MJ_L66:
   ldi    r24, 1
   jmp    MJ_L67
   MJ_L65:
   MJ_L67:
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
   brne   MJ_L63
   jmp    MJ_L62
   # then label for if
   MJ_L63:
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
   pop    r18

   # load a one byte expression off stack
   pop    r20

   # load a one byte expression off stack
   pop    r22


   # receiver will be passed as first param
   # load a two byte expression off stack
   pop    r24
   pop    r25


   call    Solver1mazeRow


   
   #Else part
   MJ_L62:
   
   #Done with if else statement 
   MJ_L64:



   /* epilogue start for Solver1mazeRow */
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
   .size Solver1mazeRow, .-Solver1mazeRow


   .text
   .global Solver1mazeCol
   .type  Solver1mazeCol, @function
Solver1mazeCol:
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
   std    Y + 3, r22
   std    Y + 3, r22

   /* done with function Solver1mazeCol prologue */

   
   # color value Meggy.Color.VIOLET
   ldi    r22,6
   push   r22
   
   # Code for MeggySetPixel
   pop    r20
   pop    r22
   pop    r24
   call   _Z6DrawPxhhh
   call   _Z12DisplaySlatev

   
   ## If statement
   
   # Less than check expression
   # load a one byte expression off stack
   pop    r18
   pop    r19
   
   # load a one byte expression off stack
   pop    r24
   pop    r25
   cp    r24, r18
   cpc    r25, r19
   
   breq   MJ_L72
   MJ_L73:
   ldi    r24, 1
   jmp    MJ_L74
   MJ_L72:
   MJ_L74:
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
   brne   MJ_L70
   jmp    MJ_L69
   # then label for if
   MJ_L70:
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
   pop    r18

   # load a one byte expression off stack
   pop    r20

   # load a one byte expression off stack
   pop    r22


   # receiver will be passed as first param
   # load a two byte expression off stack
   pop    r24
   pop    r25


   call    Solver1mazeCol


   
   #Else part
   MJ_L69:
   
   #Done with if else statement 
   MJ_L71:



   /* epilogue start for Solver1mazeCol */
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
   .size Solver1mazeCol, .-Solver1mazeCol




