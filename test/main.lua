require "RectCatAxis"
require "RectNumAxis"
require "GroupedBarGraph"
require "Legend"
require "Label"

local f
local mouseX=0
local mouseY=0
local selection1 = {}
local selection2 = {}

function setup()
	size(700,350)
	f = loadFont("data/Vera.ttf",11)
	textFont(f)
end

function draw()
	background(255)

	local months = {"Jan","Feb","Mar"}
	local investments = {"Oil","Gold","Coal","Steel"}
	local values = {{50,40,30},{40,30,20},{30,20,10},{20,10,5}}
	local colors = {"red","blue","yellow","green"}

	RectCatAxis(60,200,150,BOTTOM,months,10)
	RectNumAxis(60,50,150,LEFT,0,50,10,10)
	selection1 = GroupedBar(60,50,150,150,values,colors,VERTICAL,
										10,0.1,{mouseX,mouseY},selection1)
	Legend(220,80,10,10,investments,colors,VERTICAL,10)
	Label(selection1)

	pushMatrix()
	translate(350,0)
	RectCatAxis(60,50,150,LEFT,months,10)
	RectNumAxis(60,50,150,TOP,0,50,10,10)
	selection2 = GroupedBar(60,50,150,150,values,colors,HORIZONTAL,
									10,0.1,{mouseX-350,mouseY},selection2)
	Legend(180,150,10,10,investments,colors,HORIZONTAL,20)
	Label(selection2)
	popMatrix()
end

function mouseMoved(x,y)
	mouseX = x
	mouseY = y
end
