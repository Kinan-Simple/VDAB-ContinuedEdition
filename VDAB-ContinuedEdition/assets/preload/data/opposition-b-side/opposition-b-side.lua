local peepee
local poopoo = false
local haha = false
local hehe = false
local thenEw
local theoLd

local function spin(amount)
	peepee = getProperty("background.angle")
	setProperty("background.angle", peepee + amount)
	for x=0,7,1 do
		setPropertyFromGroup("strumLineNotes",x,"angle",peepee+amount)
	end
end



function onBeatHit()
	if curBeat >= 388 and not haha then
		poopoo = true
		doTweenColor("colorBR", "dad", "FFFFFF", 0.5, "sineInOut")
		doTweenColor("iconBR", "iconP2", "FFFFFF", 0.5, "sineInOut")
		doTweenColor("coloUH", "background", "FFFFFF", 0.5, "sineInOut")
		doTweenZoom("goodbye", "camHUD", -5, 50, "sineIn")
		haha = true
	end
	if curBeat >= 392 and haha and not hehe then
		doTweenColor("colorXD", "dad", "000000", 10, "linear")
		doTweenColor("iconUH", "iconP2", "000000", 10, "linear")
		doTweenColor("colorLOL", "background", "000000", 10, "linear")
		hehe = true
	end
	if math.fmod(curBeat,16) == 4 and not poopoo then
		doTweenColor("colorA", "dad", "00FFFF", 0.5, "sineInOut")
		doTweenColor("iconA", "iconP2", "00FFFF", 0.5, "sineInOut")
		doTweenColor("colorB", "background", "00FFFF", 0.5, "sineInOut")
		doTweenAngle("cameraA", "camHUD", 540, 0.5, "expoInOut")
	end
	if math.fmod(curBeat,16) == 8 and not poopoo then
		doTweenColor("colorC", "dad", "8800FF", 0.5, "sineInOut")
		doTweenColor("iconB", "iconP2", "8800FF", 0.5, "sineInOut")
		doTweenColor("colorD", "background", "8800FF", 0.5, "sineInOut")
		doTweenAngle("cameraB", "camHUD", 0, 1, "expoInOut")
	end
end

function onCreate()
	setProperty("dad.scale.x", 2)
	setProperty("dad.scale.y", 2)
	setProperty("gf.alpha", 0)
	setProperty("healthBar.alpha", 0)
	setProperty("iconP2.alpha", 0.25)
	setProperty("iconP1.alpha", 0.25)
	doTweenColor("thenew", "dad", "8800FF", 0.01, "linear")
	doTweenColor("thewhat??", "iconP2", "8800FF", 0.01, "linear")
	doTweenColor("theold", "background", "8800FF", 0.01, "linear")
	thenEw = getProperty("dad.x")
	theoLd = getProperty("dad.y")
end

function onSongStart()
	noteTweenX("bruh0",0,100+125,1,"expoOut")
	noteTweenX("bruh1",4,100*2+125,1,"expoOut")
	noteTweenX("bruh2",1,100*3+125,1,"expoOut")
	noteTweenX("bruh3",5,100*4+125,1,"expoOut")
	noteTweenX("bruh4",2,100*5+125,1,"expoOut")
	noteTweenX("bruh5",6,100*6+125,1,"expoOut")
	noteTweenX("bruh6",3,100*7+125,1,"expoOut")
	noteTweenX("bruh7",7,100*8+125,1,"expoOut")
end

function onStepHit()
	spin(1)
end

function opponentNoteHit()
	spin(5)
	setProperty("dad.x",thenEw + math.random(-15,15))
	setProperty("dad.y",theoLd + math.random(-10,10))
end

function goodNoteHit()
	spin(-5)
end