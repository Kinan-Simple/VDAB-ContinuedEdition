function onUpdate(elapsed)
setPropertyFromClass('ClientPrefs', 'middleScroll', false)
songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/120)
local currentBeat2 = (songPos/500)*(curBpm/120)
noteTweenX('defaultPlayerStrumX2', 2, ((screenHeight / 1) - (200 / 1)) + (math.cos((currentBeat2) + 0) * 1000), 1)
noteTweenX('defaultPlayerStrumX3', 3, ((screenHeight / 1) - (0/ 1)) + (math.cos((currentBeat2) + 0) * 1000), 1)
noteTweenX('defaultPlayerStrumX5', 5, ((screenHeight / 1) - (100 / 1)) + (math.cos((currentBeat2) + 0) * -1000), 1)
noteTweenX('defaultPlayerStrumX4', 4, ((screenHeight / 1) - (300/ 1)) + (math.cos((currentBeat2) + 0) * -1000), 1)

noteTweenX('defaultPlayerStrumX0', 0, ((screenHeight / 1) - (500 / 1)) + (math.cos((currentBeat2) + 1) * 50), 1)
noteTweenX('defaultPlayerStrumX1', 1, ((screenHeight / 1) - (300 / 1)) + (math.cos((currentBeat2) + 1) * 50), 1)
noteTweenX('defaultPlayerStrumX7', 7, ((screenHeight / 1) - (-200 / 1)) + (math.cos((currentBeat2) + 1) * -50), 1)
noteTweenX('defaultPlayerStrumX6', 6, ((screenHeight / 1) - (0 / 1)) + (math.cos((currentBeat2) + 1) * -50), 1)

noteTweenY('defaultPlayerStrumY0', 0, ((screenHeight / 1) - (200 / 1)) + (math.cos((currentBeat2) + 2) * 200), 1)
noteTweenY('defaultPlayerStrumY1', 1, ((screenHeight / 1) - (200 / 1)) + (math.cos((currentBeat2) + 3) * 200), 1)
noteTweenY('defaultPlayerStrumY2', 2, ((screenHeight / 1) - (200 / 1)) + (math.cos((currentBeat2) + 4) * 200), 1)
noteTweenY('defaultPlayerStrumY3', 3, ((screenHeight / 1) - (200 / 1)) + (math.cos((currentBeat2) + 5) * 200), 1)

noteTweenY('defaultPlayerStrumY4', 4, ((screenHeight / 1) - (200 / 1)) + (math.cos((currentBeat2) + 6) * 200), 1)
noteTweenY('defaultPlayerStrumY5', 5, ((screenHeight / 1) - (200 / 1)) + (math.cos((currentBeat2) + 7) * 200), 1)
noteTweenY('defaultPlayerStrumY6', 6, ((screenHeight / 1) - (200 / 1)) + (math.cos((currentBeat2) + 8) * 200), 1)
noteTweenY('defaultPlayerStrumY7', 7, ((screenHeight / 1) - (200 / 1)) + (math.cos((currentBeat2) + 9) * 200), 1)
setCharacterY('dad', getCharacterY('dad') + (math.sin(currentBeat) * 0.3))
function onMoveCamera(focus)
	if focus == 'boyfriend' then
		-- called when the camera focus on boyfriend
	elseif focus == 'dad' then
		setProperty('camFollowPos.y',getProperty('camFollowPos.y') + (math.sin(currentBeat) * 0.6))
	end
end
end
function onSongStart()
if middlescroll then
setProperty('health', 0)
end
end