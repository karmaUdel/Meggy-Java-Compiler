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
 ldi r24,lo8(1)
ldi r23,lo8(0)
push r24 
 push r23
ldi r23,6
push r23 
 pop r20 
 pop r22 
 pop r24 
 call   _Z6DrawPxhhh 
 call   _Z12DisplaySlatev
 ldi r24,lo8(1)
ldi r23,lo8(1)
push r24 
 push r23
ldi r23,3
push r23 
 pop r20 
 pop r22 
 pop r24 
 call   _Z6DrawPxhhh 
 call   _Z12DisplaySlatev
 ldi r24,lo8(1)
ldi r23,lo8(2)
push r24 
 push r23
ldi r23,4
push r23 
 pop r20 
 pop r22 
 pop r24 
 call   _Z6DrawPxhhh 
 call   _Z12DisplaySlatev
 ldi r24,lo8(1)
ldi r23,lo8(3)
push r24 
 push r23
ldi r23,1
push r23 
 pop r20 
 pop r22 
 pop r24 
 call   _Z6DrawPxhhh 
 call   _Z12DisplaySlatev
 ldi r24,lo8(0)
ldi r23,lo8(3)
push r24 
 push r23
ldi r23,0
push r23 
 pop r20 
 pop r22 
 pop r24 
 call   _Z6DrawPxhhh 
 call   _Z12DisplaySlatev
 ldi r24,lo8(2)
ldi r23,lo8(3)
push r24 
 push r23
ldi r23,5
push r23 
 pop r20 
 pop r22 
 pop r24 
 call   _Z6DrawPxhhh 
 call   _Z12DisplaySlatev


/* epilogue start */
    endLabel:
    jmp endLabel
    ret
    .size   main, .-main

