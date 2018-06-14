function setup()  
  size(640, 360);
  
  noStroke();
  
  noLoop();
end

function draw()  
  
  drawCircle(width()/2, 280, 6);
end

function drawCircle(x,radius,level)                      
  
  local tt = 126 * level/4.0;
  
  fill(tt);
  
  ellipse(x, height()/2, radius*2, radius*2);      
  
  if level>1 then
    
	level = level - 1;
    
	drawCircle(x - radius/2, radius/2, level);
    
	drawCircle(x + radius/2, radius/2, level);
  end
end