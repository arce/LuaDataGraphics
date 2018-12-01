-- Label.lua

function Label(selection)
	local coord
	rectMode(CORNER)
	textAlign(LEFT)
	for k,v in pairs(selection) do
		fill(255)
		rect(v.x,v.y-20,30,20)
		fill(0)
		text(v.data,v.x+5,v.y-5)
	end
end
