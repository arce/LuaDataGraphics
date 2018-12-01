require "Legend"

function setup()
	size(640,320)
	f = loadFont("data/Vera.ttf",11)
	textFont(f)
end

function draw()
	background(255)

	local weekdays = {"Sun","Mon","Tue"}
	local colors = {"red","blue","green"}
	pushMatrix()
	translate(50,50)
	Legend(10,10,weekdays,colors,VERTICAL,10)
	popMatrix()
	translate(150,50)
	Legend(10,10,weekdays,colors,HORIZONTAL,15)
end
