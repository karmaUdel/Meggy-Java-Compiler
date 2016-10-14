/**
 * PA3Cylon.java
 * 
 * Canonical example for PA3.  Displays a red light that moves
 * back and forth across the LED screen and moves to a row
 * based on key combinations.  The real trick is to make the light
 * stay on the same row after each cycle even if no buttons
 * are pressed (using Meggy.checkButton() and an arg_opts file).
 * 
 *  button combo    row
 *   up              7
 *   up and right    4
 *   down            0
 * 
 * New language features tested since PA2:
 *  -Constant integer expressions evaluated with AST visitor.
 *  -boolean constants: true, false
 *  -boolean expressions: &&, ==, !
 *  -control flow constructs: while, if
 *  -calling the MeggyJava built-in checkButton(), getPixel(), and delay() 
 *   functions
 * 
 * Requirements for the example:
 *  -use checkButton(), delay(), getPixel(), and setPixel() each at least once
 *  -use at least one boolean constant
 *  -use boolean operators: &&, ==, !
 *  -use the while and if statements at least once each
 *  -Integer constant addition, subtraction, and multiplication.  
 *   Be careful to stay within the bounds of the LED screen!
 *
 * MMS, 1/10/11
 * MMS, 1/20/13, switched to PA3.
 */

import meggy.Meggy;

class PA3Cylon {
    public static void main(String[] whatever){
        

            // Initialize the red LED location to col 0, row 0
            Meggy.setPixel( (byte)((byte)0*(byte)0+0-0), (byte)(4-3-1), Meggy.Color.RED );

            // Infinite loop that uses button presses to determine
            // which row to do cycle the LED light through or
            // if no button is pressed determines where red LED light
            // is in the zeroth column and then does a cycle in
            // that row.
            while (true) {
                // up indicates row 7
                if (Meggy.checkButton(Meggy.Button.Up)
                        && ! Meggy.checkButton(Meggy.Button.Right) )
                {


                    Meggy.setPixel((byte)0, (byte)7, Meggy.Color.RED);
                    Meggy.delay(256);
                 
                } else {
                    // up and right indicates row 4
                    if (Meggy.checkButton(Meggy.Button.Up)
                            && Meggy.checkButton(Meggy.Button.Right)) 
                    {
                  
                        Meggy.setPixel((byte)0, (byte)4, Meggy.Color.RED);
                        Meggy.delay(256);
                       
                    } 
                                }
                            }     
           Meggy.delay(1000);
                        
                


            } // end while
        
    } // end of method
    

