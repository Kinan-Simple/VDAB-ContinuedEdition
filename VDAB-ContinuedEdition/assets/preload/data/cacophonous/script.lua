function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > -0.1 then
        setProperty('health', health- 0.0045);
    end
end

function onStartCountdown()
    setProperty('health', 2)
end

function onUpdate(elapsed)
	songPos = getSongPosition()
	local currentBeat = (songPos/5000)*(curBpm/60)
	noteTweenX(defaultPlayerStrumX0, 4, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat + 300) + 0) * 250), 0.1)
	noteTweenX(defaultPlayerStrumX1, 5, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat + 350) + 1) * 250), 0.7)
	noteTweenX(defaultPlayerStrumX2, 6, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat + 400) + 2) * 250), 0.32)
	noteTweenX(defaultPlayerStrumX3, 7, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat + 450) + 3) * 250), 0.84)
	noteTweenY('defaultPlayerStrumY0', 4, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat + 500) + 0) * 250), 0.4)
	noteTweenY('defaultPlayerStrumY1', 5, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat + 550) + 1) * 250), 0.29)
	noteTweenY('defaultPlayerStrumY2', 6, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat + 600) + 2) * 250), 0.64)
	noteTweenY('defaultPlayerStrumY3', 7, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat + 650) + 3) * 250), 0.99)
	noteTweenX('fake1', 0, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat - 300) + (4) * 2) * 250), 0.84)
	noteTweenX('fake2', 1, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat - 350) + (5) * 2) * 250), 0.32)
	noteTweenX('fake3', 2, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat - 400) + (6) * 2) * 250), 0.7)
	noteTweenX('fake4', 3, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat - 450) + (7) * 2) * 250), 0.1)
	noteTweenY('defaultFPlayerStrumY0', 0, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat - 500) + (4) * 2) * 250), 0.99)
	noteTweenY('defaultFPlayerStrumY1', 1, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat - 550) + (5) * 2) * 250), 0.64)
	noteTweenY('defaultFPlayerStrumY2', 2, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat - 600) + (6) * 2) * 250), 0.29)
	noteTweenY('defaultFPlayerStrumY3', 3, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat - 650) + (7) * 2) * 250), 0.2)
function opponentNoteHit(id, direction, noteType, isSustainNote)
cameraShake(game, 0.10, 0.02)
cameraSetTarget('dad')
characterPlayAnim('gf', 'scared', true)
setProperty('health', getProperty('health') - 1 * ((getProperty('health')/22))/6)
end
function goodNoteHit(id, direction, noteType, isSustainNote)
cameraSetTarget('boyfriend')
end
end