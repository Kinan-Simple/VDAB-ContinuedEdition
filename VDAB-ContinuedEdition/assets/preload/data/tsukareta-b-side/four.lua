local y = 0

function onCreatePost()
	setProperty("gf.alpha", 0)
end

function onBeatHit()
	for x=4,7,1 do
		y = math.random(0,3)
		noteTweenX("when"..tostring(x), x, _G["defaultPlayerStrumX"..y], 0.2, "expoOut")
		noteTweenAngle("the"..tostring(x), x, 90*y, 0.1, "expoOut")
	end
end

function opponentNoteHit()
	curHealth = getProperty('health')
	if curHealth >= 0.1 then
		addHealth(-0.01)
	end
end