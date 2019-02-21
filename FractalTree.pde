private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .3;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(135, 206, 235); 
  fill(81, 127, 25);
  stroke(81, 127, 25);
  rect(0,380,640,180);
	stroke(255);  
	line(320,480,320,380);   
	drawBranches(320,380,80,3*(Math.PI)/2);  
  
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double angle1=angle+branchAngle;
  double angle2=angle-branchAngle;
  branchLength *= fractionLength;
  int endX1 = (int)(x + branchLength*(Math.cos(angle1)));
  int endY1 = (int)(y + branchLength*(Math.sin(angle1)));
  int endX2 = (int)(x + branchLength*(Math.cos(angle2)));
  int endY2 = (int)(y + branchLength*(Math.sin(angle2)));
  line(x, y, endX1, endY1);
  line(x, y, endX2, endY2);
  fill(255, 183, 197);  
  ellipse(endX1,endY1,3,3);
  ellipse(endX2,endY2,3,3);
  
  
  if (branchLength > smallestBranch) 
  {
    
    drawBranches(endX1, endY1, branchLength, angle1);
    drawBranches(endX2, endY2, branchLength, angle2);
  }
  
}
