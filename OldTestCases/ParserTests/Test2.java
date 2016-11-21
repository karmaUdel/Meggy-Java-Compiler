import meggy.Meggy;

class PA2Test1 {

//Test multiple colors and giving it integer arguments
	public static void main (String[] args)
	{
		//Draw Letter T
		Meggy.setPixel(	1	,0, Meggy.Color.VIOLET);
		Meggy.setPixel(	1	,1, Meggy.Color.YELLOW);
		Meggy.setPixel(	1	,2, Meggy.Color.GREEN);
		Meggy.setPixel(	1	,3, Meggy.Color.RED);
		Meggy.setPixel(	0	,3, Meggy.Color.BLACK);
		Meggy.setPixel(	2	,3, Meggy.Color.BLUE);

	}
}
