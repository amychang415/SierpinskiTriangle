public void draw()
{
	fill(255, 200, 200);
	noStroke();
	pinsky(0,0,300);
}
public void mouseDragged()//optional
{

}
public void setup()
{
	size(300,300);
}

public void pinsky (float x, float y, float len)
{
	if(len <= 10)
	{
		triangle(x, y, x+len, y, x+(len/2), y+(len/2*sqrt(3)));
	}
	else
	{
		pinsky(x,y,len/2);
		pinsky(x+len/2,y,len/2);
		pinsky(x+(len/4), y+(len/4*sqrt(3)),len/2);
	}
}