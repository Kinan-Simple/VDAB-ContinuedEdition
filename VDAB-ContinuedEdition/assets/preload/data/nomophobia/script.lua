local thing = 1
local defaultNotePos = {};
local spin = true;
local arrowMoveX = 0;
local arrowMoveY = 60;

function onUpdate(elapsed)

end

function onSongStart()
for i = 0,7 do
x = getPropertyFromGroup("strumLineNotes", i, "x")

y = getPropertyFromGroup("strumLineNotes", i, "y")

table.insert(defaultNotePos, {x,y})

--debugPrint("(" .. x .. "," .. y .. ")" .. "i: " .. i)
end
end

function onUpdate(elapsed)

songPos = getPropertyFromClass("Conductor", "songPosition");

currentBeat = (songPos / 1000) * (bpm / 129)

if spin == true then
for i = 0,7 do
  setPropertyFromGroup("strumLineNotes", i, "x", defaultNotePos[i + 1][1] + arrowMoveX * math.cos((currentBeat + i*5.00) * math.pi))
  setPropertyFromGroup("strumLineNotes", i, "y", defaultNotePos[i + 1][2] + arrowMoveY * math.cos((currentBeat + i*5.00) * math.pi))

  if curStep >= 0 then
    songPos = getSongPosition()
    local currentBeat = (songPos/1000)*(bpm/200)
    doTweenY(dadTweenY, 'dad', 290-130*math.sin((currentBeat*0.25)*math.pi),0.001)
    end
end
end
end

function opponentNoteHit()
	triggerEvent('Screen Shake', '0.1, 0.01', '0.1, 0.02');
    health = getProperty('health')
 if getProperty('health') > 0.80 then
    setProperty('health', health- 0.02);
end
end

function onBeatHit()
  if curBeat >= 0 and curBeat < 352 then
		thing = thing * -1
		doTweenAngle('rotate', 'camHUD', thing * 5, crochet / 1000, 'quadInOut')
    elseif curBeat == 352 then
    	doTweenAngle('rotate', 'camHUD', 0, crochet / 1000, 'quadOut') 
    end
    end  
  
