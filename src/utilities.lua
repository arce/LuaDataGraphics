-- Utilities.lua

function tableMax(data)
	value = data[1][1]
	for i=1,#data do
		for j=1,#data[1] do
			if (value<data[i][j]) then
				value = data[i][j]
			end
		end
	end
	return value
end

function mouseOver(x,y,w,h)
  if ((x < mouseX) and (mouseX < x+w) and 
    (y < mouseY) and (mouseY <y+h)) 
  then return true
  else return false
  end
end
