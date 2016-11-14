/**
 * PA4nodef.java
 * 
 * call undefined method
 *   
 * WB, 3/12
 */

import meggy.Meggy;

class PA4noDef {

    public static void main(String[] whatever){
	new C().setP((byte)3,(byte)7,Meggy.Color.BLUE);
	Meggy.toneStart(Meggy.Tone.C3,1000);
    }
}

class C {
public void setP2(byte x, byte y, Meggy.Color c) {
            Meggy.setPixel(x, y, c);    
return 2;
    }
    
    public void setP(byte x, byte y, Meggy.Color c) {
//     return x+y;
	 return this.setP2( x, y,  c  );
    }


    
}
