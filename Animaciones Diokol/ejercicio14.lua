
local mouseX = 0
local mouseY = 0

function setup()
  size(640, 360);
  img = loadImage('data/Diokol.jpg');
end


function draw() 
  fill(0, 12);
  
  rect(0, 0, width(), height());
  
  fill(255);
  
  noStroke();
  
  ellipse(mouseX, mouseY, 60, 60);
  
  -- Draw the offscreen buffer to the screen with image() 
  imageMode(CENTER)
  image(img,325, 200, 100, 100); 
end

function mouseMoved(x,y)
  mouseX = x
  mouseY = y
end