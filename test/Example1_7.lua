require "DataVizDkl"
json = require "json"

local dvd
local f
local data
local catColumn
local investments
local colors
local maxvalue

function setup()
	size(500,350)
	local f = loadFont("data/Vera.ttf",11)
	textFont(f)
	dvd = DataVizDkl:new()
	str = readAll("data.json")
	data = json.decode(str)
	catColumn = getColumn(data,"Month")
	investments = {"Oil","Gold","Coal","Steel"}
	colors = {"red","blue","yellow","green"}
	maxvalue = tableMax(data)
end

function draw()
	background(255)

	dvd:Begin()
	dvd:GroupedBarGraph({x=60,y=30,data=data,colors=colors,
				series=investments,categories=catColumn,maxvalue=maxvalue})

	dvd:GroupedPointGraph({x=300,y=30,data=data,colors=colors,
				series=investments,categories=catColumn,maxvalue=maxvalue})

	dvd:GroupedLineGraph({x=60,y=200,data=data,colors=colors,
				series=investments,categories=catColumn,maxvalue=maxvalue})

	dvd:GroupedAreaGraph({x=300,y=200,data=data,colors=colors,
				series=investments,categories=catColumn,maxvalue=maxvalue})
	dvd:End()
end
