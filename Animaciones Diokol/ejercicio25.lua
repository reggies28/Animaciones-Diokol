local angle = 0;
--Velocity
local aVelocity = 0;
--Acceleration
local aAcceleration = 0.001;
 
function setup() 
  size(640,360);
end
 
function draw() 
  background(255);
 
  fill(175);
  stroke(0);
  rectMode(CENTER);
  translate(width()/2,height()/2);
  rotate(angle);
  line(-50,0,50,0);
  ellipse(50,0,8,8);
  ellipse(-50,0,8,8);
 
--Angular equivalent of velocity.add(acceleration);
  aVelocity =aVelocity+ aAcceleration;
--Angular equivalent of location.add(velocity);
  angle =angle+ aVelocity;
end