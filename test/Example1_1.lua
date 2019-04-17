require "src/CircCatAxis"

function setup()
	size(640,320)
end

function draw()
	background(255)
	local weekdays = {"Sun","Mon","Tue","Wed","Thu","Fri","Sat"}
	local months = {"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"}

	pushMatrix()
	translate(175,100)
	CircCatAxis(100, weekdays, 10)
	popMatrix()
	translate(450,100)
	CircCatAxis(100, months, 10)
end
