/**
 * PA3buttondot
 * 
 * If no button is pressed, then lights up a single ORANGE pixel.
 * If button A is pressed, then lights up a single VIOLET pixel.
 * If button B is pressed, then lights up a single GREEN pixel.
 * 
 * MMS, 2/1/11
 */

import meggy.Meggy;

class PA3buttondot {
    public static void main(String[] whatever){
        


            // infinite loop that checks for button presses every half second
            while (true) {
	            Meggy.setPixel( (byte)7, (byte)7, Meggy.Color.ORANGE );

                }

                // tenth second delay, 100 milliseconds Meggy.checkButton(Meggy.Button.A)
                Meggy.delay(100);
            }
        }
    	

