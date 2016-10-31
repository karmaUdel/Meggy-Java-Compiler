/*
Tests delay and the negation operator.
*/
import meggy.Meggy;

class PA4MethodCall
{
	public static void main (String[] args)
	{
	Meggy.setPixel((byte)((byte)6*(byte)6),(byte)5,Meggy.Color.BLUE);

		/*Meggy.setPixel((byte)6,(byte)6,Meggy.Color.YELLOW);

		if(Meggy.getPixel((byte)6,(byte)6)==Meggy.Color.BLUE)
			{ 
			Meggy.delay(1000);
			Meggy.setPixel((byte)7,(byte)7,Meggy.Color.RED);
			} */
	new fuzzy().fuzzymethod(1);
	new fuzzy().fuzzymethod(1,3,2);	
	}
	
}

class fuzzy
{
	public int fuzzymethod(int t,int a){
		//Meggy.setPixel((byte)((byte)6*(byte)6),(byte)5,Meggy.Color.BLUE);

	}
}
