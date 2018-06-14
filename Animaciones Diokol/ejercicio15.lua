local xpos1=1;
local xpos2=1;
local xpos3=1;
local xpos4=1;
local thin = 8;
local thick = 36;
local mouseX = 0
local mouseY = 0

function setup() 
  size(640, 360);
  noStroke();
  xpos1 = width()/2;
  xpos2 = width()/2;
  xpos3 = width()/2;
  xpos4 = width()/2;
end

function draw() 
  background(0);
  
  local mx =mouseX*0.4-width()/5.0;
  
  fill(102);
  rect(xpos2, 0, thick, height()/2);
  fill(204);
  rect(xpos1, 0, thin, height()/2);
  fill(102);
  rect(xpos4, height()/2, thick, height()/2);
  fill(204);
  rect(xpos3, height()/2, thin, height()/2);
	
  xpos1 = xpos1+mx/16;
  xpos2 = xpos2+mx/64;
  xpos3 = xpos3-mx/16;
  xpos4 = xpos4-mx/64;
  
  if xpos1<-thin then
       xpos1 =  width();
  end 
  if xpos1>width() then
      xpos1 = -thin; 
  end
  if xpos2<-thick then
      xpos2 =  width;
  end
  if xpos2>width() then
     xpos2 = -thick; 
  end
  if xpos3<-thin then
       xpos3 =  width(); 
  end
  if xpos3>width() then
      xpos3 = -thin; 
  end
  if xpos4<-thick then 
     xpos4 =  width(); 
  end
  if xpos4>width() then 
     xpos4 = -thick; 
  end
end

function mouseMoved(x,y)
  mouseX = x
  mouseY = y
end