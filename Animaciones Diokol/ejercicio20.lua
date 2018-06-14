local angulo = 0

function setup()
 
	size(400,400);
	
	smooth();
end

function draw()
 
	fill(0,12);
	
	rect(0,0,width(),height());
	
	fill(255);
	
	noStroke();
	
	ellipse(200,200,5,5); --dibuja el puntito del centro de giro

	angulo = angulo + 0.02; --ángulo girado
	
	translate(200,200); --traslada el origen de coordenadas para girar dentro del lienzo
	
	rotate(angulo); --gira el objeto el ángulo girado
	
	rect(10,10,100,100); --dibuja el objeto
end

