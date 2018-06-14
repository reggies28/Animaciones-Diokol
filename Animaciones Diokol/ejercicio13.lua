local x=1;
local y=1;
local dim = 80.0;

function setup()
  size(640, 360);
  noStroke();
end

function draw() 
  background(102);
  
  x = x+0.8;
  
  if x>width()+dim then
    x = -dim;
  end 
  
  translate(x, height()/2-dim/2);
  fill(255);
  rect(-dim/2, -dim/2, dim, dim);
  
  --// Transforms accumulate. Notice how this rect moves 
  --// twice as fast as the other, but it has the same 
  --// parameter for the x-axis value
  translate(x, dim);
  fill(0);
  rect(-dim/2, -dim/2, dim, dim);
end