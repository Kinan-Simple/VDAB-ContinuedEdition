local bop = 1;
local bop2 = 1;
local anglePlus = 1;

function onBeatHit()
	if curBeat % 2 == 0 then
		bop = -bop2;
	else
		bop = bop2;
	end

    anglePlus = bop*20;

  for i = 0,7 do
    setPropertyFromGroup('strumLineNotes', i, 'angle', anglePlus)
  end
end


function onUpdate(elapsed)
  if curStep >= 0 then
    songPos = getSongPosition()
    local currentBeat = (songPos/1000)*(bpm/130)
    doTweenY(dadTweenY, 'dad', 290-130*math.sin((currentBeat*0.25)*math.pi),0.001)
  end
end

function opponentNoteHit()
	triggerEvent('Screen Shake', '0.1, 0.02', '0.1, 0.02');
  triggerEvent('Add Camera Zoom', '0.01, 0.01', '0, 0');
    health = getProperty('health')
 if getProperty('health') > 0.80 then
    setProperty('health', health- 0.03);
end
end

