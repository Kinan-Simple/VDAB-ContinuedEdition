function onUpdate(elapsed)
songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/180)
local currentBeat2 = (songPos/500)*(curBpm/180)
setCharacterY('dad',getCharacterY('dad') + (math.sin(currentBeat) * 0.3))

noteTweenY('defaultPlayerStrumY0', 0, ((screenHeight / 2) - (-140 / 1)) + (math.cos((currentBeat2) + 0) * 180), 1)
noteTweenY('defaultPlayerStrumY1', 1, ((screenHeight / 2) - (-140 / 1)) + (math.cos((currentBeat2) + 3) * 180), 1)
noteTweenY('defaultPlayerStrumY2', 2, ((screenHeight / 2) - (-140 / 1)) + (math.cos((currentBeat2) + 0) * 180), 1)
noteTweenY('defaultPlayerStrumY3', 3, ((screenHeight / 2) - (-140 / 1)) + (math.cos((currentBeat2) + 3) * 180), 1)

noteTweenY('defaultPlayerStrumY4', 4, ((screenHeight / 2) - (-140 / 1)) + (math.cos((currentBeat2) + 0) * 180), 1)
noteTweenY('defaultPlayerStrumY5', 5, ((screenHeight / 2) - (-140 / 1)) + (math.cos((currentBeat2) + 3) * 180), 1)
noteTweenY('defaultPlayerStrumY6', 6, ((screenHeight / 2) - (-140 / 1)) + (math.cos((currentBeat2) + 0) * 180), 1)
noteTweenY('defaultPlayerStrumY7', 7, ((screenHeight / 2) - (-140 / 1)) + (math.cos((currentBeat2) + 3) * 180), 1)


local currentBeat = (songPos/5000)*(curBpm/180)
local currentBeat2 = (songPos/500)*(curBpm/180)

noteTweenX('defaultPlayerStrumX0', 0, ((screenHeight / 1) - (60 / 0.1)) + (math.cos((currentBeat2) + 0) * -60), 0.1)
noteTweenX('defaultPlayerStrumX1', 1, ((screenHeight / 1) - (50 / 0.1)) + (math.cos((currentBeat2) + 3) * -60), 0.1)
noteTweenX('defaultPlayerStrumX2', 2, ((screenHeight / 1) - (40 / 0.1)) + (math.cos((currentBeat2) + 0) * -60), 0.1)
noteTweenX('defaultPlayerStrumX3', 3, ((screenHeight / 1) - (30 / 0.1)) + (math.cos((currentBeat2) + 3) * -60), 0.1)

noteTweenX('defaultPlayerStrumX7', 7, ((screenHeight / 1) - (-35 / 0.1)) + (math.cos((currentBeat2) + 3) * -65), 0.1)
noteTweenX('defaultPlayerStrumX6', 6, ((screenHeight / 1) - (-25 / 0.1)) + (math.cos((currentBeat2) + 0) * -65), 0.1)
noteTweenX('defaultPlayerStrumX5', 5, ((screenHeight / 1) - (-15 / 0.1)) + (math.cos((currentBeat2) + 3) * -65), 0.1)
noteTweenX('defaultPlayerStrumX4', 4, ((screenHeight / 1) - (-5 / 0.1)) + (math.cos((currentBeat2) + 0) * -65), 0.1)
end

function onSongStart()
	if not downscroll then
setProperty('health', 0)
else
if middlescroll then
setProperty('health', 0)
end
end
end