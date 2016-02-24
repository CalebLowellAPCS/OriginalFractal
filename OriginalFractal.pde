
public void setup()
{
size(512, 512);
background(0, 0, 0);
}

int len = 100;
int a = 5;
int b = 7;
int c = 1;
int d = 1;

public void draw()
{
chuuni(256, 256, len, 20);
}
public void mousePressed()//optional
{
    len = len + 3;
    d = d - 1;
}
public void chuuni(int x, int y, int len, int d) 
{
    if(len<=10){
   	fill(a*d, b*d, c*d, d/20);
    ellipse(x, y, len, len);
	}
	else{
    chuuni(x, y, len/2, d * 5);
    chuuni(x+len/2, y, len/2, d + 4);
    chuuni(x-len/2, y, len/2, d + 3);
    chuuni(x, y+len/2, len/2, d + 2);
    chuuni(x, y-len/2, len/2, d + 1);
	} 

}