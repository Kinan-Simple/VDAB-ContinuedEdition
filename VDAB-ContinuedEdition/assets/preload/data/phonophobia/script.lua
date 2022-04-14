function onUpdate(elapsed)
songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/60)
local currentBeat2 = (songPos/500)*(curBpm/60)
setCharacterY('dad',getCharacterY('dad') + (math.sin((currentBeat) + 0) * 0.6))
setCharacterX('dad',getCharacterX('dad') + (math.sin((currentBeat) + 60) * 0.6))
setPropertyFromClass('PlayState', 'SONG.speed', 3.1 + (math.sin(currentBeat) * 60))

noteTweenY('defaultOpponentStrumY0', 0, defaultOpponentStrumY0 + (1 * 100) * math.sin((currentBeat+4 *0.25) * math.pi), 0.0001)
noteTweenY('defaultOpponentStrumY1', 1, defaultOpponentStrumY1 + (1 * 100) * math.sin((currentBeat+0 *0.25) * math.pi), 0.0001)
noteTweenY('defaultOpponentStrumY2', 2, defaultOpponentStrumY2 + (1 * 100) * math.sin((currentBeat+4 *0.25) * math.pi), 0.0001)
noteTweenY('defaultOpponentStrumY3', 3, defaultOpponentStrumY3 + (1 * 100) * math.sin((currentBeat+0 *0.25) * math.pi), 0.0001)

noteTweenY('defaultPlayerStrumY0', 4, defaultPlayerStrumY0 + (1 * 100) * math.sin((currentBeat+4 *0.25) * math.pi), 0.0001)
noteTweenY('defaultPlayerStrumY1', 5, defaultPlayerStrumY0 + (1 * 100) * math.sin((currentBeat+0 *0.25) * math.pi), 0.0001)
noteTweenY('defaultPlayerStrumY2', 6, defaultPlayerStrumY0 + (1 * 100) * math.sin((currentBeat+4 *0.25) * math.pi), 0.0001)
noteTweenY('defaultPlayerStrumY3', 7, defaultPlayerStrumY0 + (1 * 100) * math.sin((currentBeat+0 *0.25) * math.pi), 0.0001)

local currentBeat = (songPos/5000)*(curBpm/200)
local currentBeat2 = (songPos/500)*(curBpm/200)

noteTweenX('defaultPlayerStrumX0', 0, ((screenHeight / 1) - (500 / 1)) + (math.cos((currentBeat2) + 0) * -100), 1)
noteTweenX('defaultPlayerStrumX1', 1, ((screenHeight / 1) - (400 / 1)) + (math.cos((currentBeat2) + 0) * -100), 1)
noteTweenX('defaultPlayerStrumX2', 2, ((screenHeight / 1) - (300 / 1)) + (math.cos((currentBeat2) + 0) * -100), 1)
noteTweenX('defaultPlayerStrumX3', 3, ((screenHeight / 1) - (200 / 1)) + (math.cos((currentBeat2) + 0) * -100), 1)
noteTweenX('defaultPlayerStrumX4', 4, ((screenHeight / 1) - (100 / 1)) + (math.cos((currentBeat2) + 0) * -100), 1)
noteTweenX('defaultPlayerStrumX5', 5, ((screenHeight / 1) - (0 / 1)) + (math.cos((currentBeat2) + 0) * -100), 1)
noteTweenX('defaultPlayerStrumX6', 6, ((screenHeight / 1) - (-100 / 1)) + (math.cos((currentBeat2) + 0) * -100), 1)
noteTweenX('defaultPlayerStrumX7', 7, ((screenHeight / 1) - (-200 / 1)) + (math.cos((currentBeat2) + 0) * -100), 1)

if curStep > 640 then

local currentBeat = (songPos/5000)*(curBpm/180)
local currentBeat2 = (songPos/500)*(curBpm/180)

noteTweenY('defaultOpponentStrumY0', 0, defaultOpponentStrumY0 + (1 * 150) * math.sin((currentBeat+4 *0.25) * math.pi), 0.0001)
noteTweenY('defaultOpponentStrumY1', 1, defaultOpponentStrumY1 + (1 * 150) * math.sin((currentBeat+0 *0.25) * math.pi), 0.0001)
noteTweenY('defaultOpponentStrumY2', 2, defaultOpponentStrumY2 + (1 * 150) * math.sin((currentBeat+4 *0.25) * math.pi), 0.0001)
noteTweenY('defaultOpponentStrumY3', 3, defaultOpponentStrumY3 + (1 * 150) * math.sin((currentBeat+0 *0.25) * math.pi), 0.0001)

noteTweenY('defaultPlayerStrumY0', 4, defaultPlayerStrumY0 + (1 * 150) * math.sin((currentBeat+4 *0.25) * math.pi), 0.0001)
noteTweenY('defaultPlayerStrumY1', 5, defaultPlayerStrumY0 + (1 * 150) * math.sin((currentBeat+0 *0.25) * math.pi), 0.0001)
noteTweenY('defaultPlayerStrumY2', 6, defaultPlayerStrumY0 + (1 * 150) * math.sin((currentBeat+4 *0.25) * math.pi), 0.0001)
noteTweenY('defaultPlayerStrumY3', 7, defaultPlayerStrumY0 + (1 * 150) * math.sin((currentBeat+0 *0.25) * math.pi), 0.0001)

local currentBeat = (songPos/5000)*(curBpm/600)
local currentBeat2 = (songPos/500)*(curBpm/600)

noteTweenX('defaultPlayerStrumX0', 0, ((screenHeight / 1) - (500 / 1)) + (math.cos((currentBeat2) + 0) * -100), 1)
noteTweenX('defaultPlayerStrumX1', 1, ((screenHeight / 1) - (400 / 1)) + (math.cos((currentBeat2) + 0) * -100), 1)
noteTweenX('defaultPlayerStrumX2', 2, ((screenHeight / 1) - (300 / 1)) + (math.cos((currentBeat2) + 0) * -100), 1)
noteTweenX('defaultPlayerStrumX3', 3, ((screenHeight / 1) - (200 / 1)) + (math.cos((currentBeat2) + 0) * -100), 1)
noteTweenX('defaultPlayerStrumX4', 4, ((screenHeight / 1) - (100 / 1)) + (math.cos((currentBeat2) + 0) * -100), 1)
noteTweenX('defaultPlayerStrumX5', 5, ((screenHeight / 1) - (0 / 1)) + (math.cos((currentBeat2) + 0) * -100), 1)
noteTweenX('defaultPlayerStrumX6', 6, ((screenHeight / 1) - (-100 / 1)) + (math.cos((currentBeat2) + 0) * -100), 1)
noteTweenX('defaultPlayerStrumX7', 7, ((screenHeight / 1) - (-200 / 1)) + (math.cos((currentBeat2) + 0) * -100), 1)
end
end

function onSongStart()
if middlescroll then
setProperty('health', 0)
end
end