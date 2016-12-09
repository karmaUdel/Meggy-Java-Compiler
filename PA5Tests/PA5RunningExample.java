/**
 * PA5RunningExample.java
 * 
 * Running example in lecture 23
 * MMS, 4/13
 */

import meggy.Meggy;

class PA5RunningExample {

    public static void main(String[] whatever){
	    new E().foo(true);
    }
}

class C {
    int i;
    C c;
    public int foo( boolean p) {
        B b;
        Meggy.setPixel((byte)(4),(byte)0, Meggy.Color.ORANGE);

        return 3;
    }
}

class B {}
class E extends C{}   
