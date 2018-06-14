local mouseX=0
local mouseY=0  

local q =0
local w =0
local easing = 0.05;

function setup() 
  size(640, 360); 
  noStroke();  
end

function draw() 
  background(51);
  
  local targetX = mouseX;
  local dx = targetX - q;
  q = q + dx * easing;
  
  local targetY = mouseY;
  local dy = targetY - w;
  w = w + dy * easing;
  
  ellipse(q, w, 66, 66);
end



function mouseMoved(x,y)
    mouseX = x
    mouseY = y
end