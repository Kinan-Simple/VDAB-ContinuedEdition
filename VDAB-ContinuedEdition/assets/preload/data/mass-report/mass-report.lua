function onCreate()
	setCharacterX("dad",-500)
end

local MyAss = 0

function onUpdate()
	songPos = getSongPosition()
	
	
	for h = 0,3,1 do
		setPropertyFromGroup("strumLineNotes", h, "x", (_G["defaultOpponentStrumX"..h]) + (math.tan(h + (songPos/1000) * bpm/30) * 200))
		-- setPropertyFromGroup("strumLineNotes", h, "alpha", 0.2)
		setPropertyFromGroup("strumLineNotes", h, "angle", math.random(0,360))
		setPropertyFromGroup("strumLineNotes", h, "scale.x", (math.random(0.5,1)))
		setPropertyFromGroup("strumLineNotes", h, "scale.y", (math.random(0.5,1)))
		
		
		notesLenght = getProperty("notes.length")
		for i = 0,notesLenght,1 do
			setPropertyFromGroup("notes",i,"scale.x",(math.sin((songPos/1000) * bpm/15) / 5 + 1))
			setPropertyFromGroup("notes",i,"scale.y",(math.sin((songPos/1000) * bpm/15) / 5 + 1))
		end
	end
	
	
	for n = 0,3,1 do
		setPropertyFromGroup("strumLineNotes", n+4, "x", (_G["defaultPlayerStrumX"..n]) + (math.tan(n+4 + (songPos/1000) * bpm/30) * 10))
		setPropertyFromGroup("strumLineNotes", n+4, "angle", (_G["defaultPlayerStrumX"..n]) + (math.tan(n+4 + (songPos/1000) * bpm/240) * 10))
	end
	
end

function opponentNoteHit()
	curHealth = getProperty('health')
	if curHealth >= 0.1 then
		addHealth(-0.01)
	end
	cameraShake("camGame", 0.01, 0.1)
	setPropertyFromClass("openfl.Lib", "application.window.x", tonumber(getPropertyFromClass("openfl.Lib", "application.window.x") + math.random(-1,1) ))
	setPropertyFromClass("openfl.Lib", "application.window.y", tonumber(getPropertyFromClass("openfl.Lib", "application.window.y") + math.random(-1,1) ))
end
