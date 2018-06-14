function setup()
	size(640,360);
	
	noStroke();
	
	background(51,0,0);
end

--colorinside=#CC6600;
--colormiddle=#CC9900;
--coloroutside=#993300;

function draw()
	pushMatrix();
	translate(80,80);
	
	fill("#993300");
	rect(0,0,200,200);
	fill("#CC9900");
	rect(40,60,120,120);
	fill("#CC6600");
	rect(60,90,80,80);
	popMatrix();

	pushMatrix();
	translate(360,80);
	
	fill("#CC6600");
	rect(0,0,200,200);
	fill("#993300");
	rect(40,60,120,120);
	fill("#CC9900");
	rect(60,90,80,80);
	popMatrix();
end