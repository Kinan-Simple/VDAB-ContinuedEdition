function update (elapsed)
		for i=0,7 do
			setActorAngle(getActorAngle(i) + 15, i)
		end
end