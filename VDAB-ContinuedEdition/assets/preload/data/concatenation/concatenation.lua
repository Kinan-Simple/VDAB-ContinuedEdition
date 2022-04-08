function onCreate()
	setProperty("dad.scale.x", 2)
	setProperty("dad.scale.y", 2)
	setProperty("gf.alpha", 0)
end

function onUpdatePost()
	songPos = getSongPosition()
	setProperty("background.y",math.random(-200,-1000))
	setProperty("background.x",math.random(-400,-600))
	for yourmom=4,7,1 do
		setPropertyFromGroup("strumLineNotes",yourmom,"x",(math.sin(songPos/500 + (yourmom-4) * 112)/math.pi)*448+844)
	end
end

function opponentNoteHit()
	curHealth = getProperty('health')
	if curHealth >= 0.1 then
		addHealth(-0.01)
	end
	cameraShake("camGame", 0.01, 0.1)
	setPropertyFromClass("openfl.Lib", "application.window.x", tonumber(getPropertyFromClass("openfl.Lib", "application.window.x") + math.random(-5,5) ))
	setPropertyFromClass("openfl.Lib", "application.window.y", tonumber(getPropertyFromClass("openfl.Lib", "application.window.y") + math.random(-5,5) ))
end