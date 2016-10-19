/**
 * PA3Expressions.java
 * MMS 2/16/11, updated WB 7/15/11
 */

import meggy.Meggy;

class Byte {
	public static void main(String[] whatever){
	        // Byte multiplication

		if(11 == 6){
	        Meggy.setPixel(1+2*3, 4-5,
	                         Meggy.Color.WHITE);}
		
	        // Byte casts Byte
	        Meggy.setPixel( (byte)((byte)7),
	                        (byte)((byte)(8-(byte)9*(byte)10)),
	                        Meggy.Color.ORANGE);
		
    }
}
