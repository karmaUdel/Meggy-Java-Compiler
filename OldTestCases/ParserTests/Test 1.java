import meggy.Meggy;

class PA2Test1 {

	public static void main (String[] args)
	{
		//Draw Letter T in BLUE
		Meggy.setPixel(	(byte)1	,(byte)0, Meggy.Color.BLUE);
		Meggy.setPixel(	(byte)1	,(byte)1, Meggy.Color.BLUE);
		Meggy.setPixel(	(byte)1	,(byte)2, Meggy.Color.BLUE);
		Meggy.setPixel(	(byte)1	,(byte)3, Meggy.Color.BLUE);
		Meggy.setPixel(	(byte)0	,(byte)3, Meggy.Color.BLUE);
		Meggy.setPixel(	(byte)2	,(byte)3, Meggy.Color.BLUE);

		//Draw Letter A in RED
		Meggy.setPixel(	(byte)4	,(byte)0, Meggy.Color.RED);
		Meggy.setPixel(	(byte)4	,(byte)1, Meggy.Color.RED);
		Meggy.setPixel(	(byte)4	,(byte)2, Meggy.Color.RED);
		Meggy.setPixel(	(byte)5	,(byte)1, Meggy.Color.RED);
		Meggy.setPixel(	(byte)5	,(byte)3, Meggy.Color.RED);
		Meggy.setPixel(	(byte)6	,(byte)0, Meggy.Color.RED);
		Meggy.setPixel(	(byte)6	,(byte)1, Meggy.Color.RED);
		Meggy.setPixel(	(byte)6	,(byte)2, Meggy.Color.RED);
	}
}
