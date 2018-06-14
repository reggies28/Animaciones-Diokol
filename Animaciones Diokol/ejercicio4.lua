local mouseX = 0
local mouseY = 0

function setup() 
  size(480, 270);
  background(255);
end

function draw() 

end


function mousePressed() 
  stroke(0);
  
  fill(175);
  
  rectMode(CENTER);
  
  rect(mouseX, mouseY, 16, 16);
end


function keyPressed() 
  background(255);
end

function mouseMoved(x,y)
  mouseX = x
  mouseY = y
end