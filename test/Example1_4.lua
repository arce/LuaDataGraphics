require "src/CircNumAxis"

function setup()
	size(640,320)
end

function draw()
	background(255)
	
	local weekdays = {"Sun","Mon","Tue","Wed","Thu","Fri","Sat"}
	local months = {"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"}
	
	pushMatrix()
	translate(175,100)
	CircNumAxis(100, 0, 100, 10, 10)
	popMatrix()
	translate(450,100)	
	CircNumAxis(100, 0, 1000, 100, 10)
end

