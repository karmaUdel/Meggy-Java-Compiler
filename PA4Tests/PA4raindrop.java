/**
 * PA4raindrop.java
 * 
 * A blue pixel falls from top to bottom of the screen over and over in an
 * infinite loop.
 *   
 * MMS, 2/2/11
 */

import meggy.Meggy;

class PA4raindrop {

    public static void main(String[] whatever){
        // Not actually constructing object in PA5 compiler,
        // but syntax needs to be there.
        // Rain in column 3.
        while (true) {
            new Cloud().rain(3,(byte)7);
	    //Meggy.toneStart(Meggy.Tone.C3,10);	
            Meggy.delay(500);
            Meggy.setPixel((byte)((byte)3*(byte)4), (byte)0, Meggy.Color.DARK);
            Meggy.setPixel((byte)1, (byte)6, Meggy.Color.ORANGE);
        }
    }
}

class Cloud {
    
    public void rain(byte x, byte y) {
        // light up x,y if is in bounds
        // and continue recursion
        if (this.inBounds(x, y, y)) {
            Meggy.setPixel(x, y, Meggy.Color.BLUE);
            if (this.inBounds(x,(byte)(y+(byte)1),y)) {
                    Meggy.setPixel(x, (byte)(y+(byte)1), Meggy.Color.DARK);
            } else {}
            Meggy.delay(100);
            this.rain(x, (byte)(y-(byte)1));
        } else {}
    }
    
    public boolean inBounds(byte x, byte y, byte point) {
	if(x<y){Meggy.delay(1000);}
        return ((byte)(0+1) < y ) && (y < (byte)8);
    }

    public boolean inb(byte x, byte y, byte point, int po, byte poi) {
	if(x<y){Meggy.delay(1000);}
        return ((byte)(0+1) < y ) && (y < (byte)8);
    }

    public boolean inbad(byte x, byte y, byte point, int po) {
	if(x<y){Meggy.delay(1000);}
        return ((byte)(0+1) < y ) && (y < (byte)8);
    }

    public boolean empty() {
	//if(x<y){Meggy.delay(1000);}
        return 1;//((byte)(0+1) < y ) && (y < (byte)8);
    }

}
