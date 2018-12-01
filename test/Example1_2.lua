require "RectNumAxis"

function setup()
	size(640,320)
	f = loadFont("data/Vera.ttf",11)
	textFont(f)
end

function draw()
	background(255)
	
	pushMatrix()
	translate(100,20)
	RectNumAxis(150, LEFT, 0, 100, 10, 10)
	popMatrix()
	pushMatrix()
	translate(150,20)
	RectNumAxis(150, RIGHT, 0, 10, 1, 10)
	popMatrix()
	pushMatrix()
	translate(240,180)
	RectNumAxis(150, TOP, 0, 10, 1, 10)
	popMatrix()
	translate(240,120)
	RectNumAxis(150, BOTTOM, 0, 100, 10, 10)
end
