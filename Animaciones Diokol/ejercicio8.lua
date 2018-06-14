local y = 0;

function setup() 
  size(480, 270);
  background(255);
  --Slowing down the frame rate so we can easily see the effect.
  frameRate(5); 
end

function draw() 
  -- Draw a line
  stroke(0);
  --// Only one line is drawn each time through draw().
  line(0,y,width(),y); 
  --// Increment y
  y =y+10;
  
  --// Reset y back to 0 when it gets to the bottom of window
  if y>height() then
    y = 0;
  end
end