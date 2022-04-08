function onUpdate(elapsed)
songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/60)
local currentBeat2 = (songPos/500)*(curBpm/60)
setCharacterY('dad',getCharacterY('dad') + (math.sin(currentBeat) * 12))
setPropertyFromClass('ClientPrefs', 'ghostTapping', true)

noteTweenY('defaultPlayerStrumY0', 0, ((screenHeight / 2) - (-150 / 1)) + (math.cos((currentBeat2) + 0) * -300), 1)
noteTweenY('defaultPlayerStrumY1', 1, ((screenHeight / 2) - (-150 / 1)) + (math.cos((currentBeat2) + 3) * -300), 1)
noteTweenY('defaultPlayerStrumY2', 2, ((screenHeight / 2) - (-150 / 1)) + (math.cos((currentBeat2) + 0) * -300), 1)
noteTweenY('defaultPlayerStrumY3', 3, ((screenHeight / 2) - (-150 / 1)) + (math.cos((currentBeat2) + 3) * -300), 1)
noteTweenY('defaultPlayerStrumY4', 4, ((screenHeight / 2) - (-150 / 1)) + (math.cos((currentBeat2) + 0) * -300), 1)
noteTweenY('defaultPlayerStrumY5', 5, ((screenHeight / 2) - (-150 / 1)) + (math.cos((currentBeat2) + 3) * -300), 1)
noteTweenY('defaultPlayerStrumY6', 6, ((screenHeight / 2) - (-150 / 1)) + (math.cos((currentBeat2) + 0) * -300), 1)
noteTweenY('defaultPlayerStrumY7', 7, ((screenHeight / 2) - (-150 / 1)) + (math.cos((currentBeat2) + 3) * -300), 1)

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
noteTweenY('defaultPlayerStrumY0', 0, ((screenHeight / 2) - (-150 / 1)) + (math.cos((currentBeat2) + 0) * -300), 1)
noteTweenY('defaultPlayerStrumY1', 1, ((screenHeight / 2) - (-150 / 1)) + (math.cos((currentBeat2) + 3) * -300), 1)
noteTweenY('defaultPlayerStrumY2', 2, ((screenHeight / 2) - (-150 / 1)) + (math.cos((currentBeat2) + 0) * -300), 1)
noteTweenY('defaultPlayerStrumY3', 3, ((screenHeight / 2) - (-150 / 1)) + (math.cos((currentBeat2) + 3) * -300), 1)
noteTweenY('defaultPlayerStrumY4', 4, ((screenHeight / 2) - (-150 / 1)) + (math.cos((currentBeat2) + 0) * -300), 1)
noteTweenY('defaultPlayerStrumY5', 5, ((screenHeight / 2) - (-150 / 1)) + (math.cos((currentBeat2) + 3) * -300), 1)
noteTweenY('defaultPlayerStrumY6', 6, ((screenHeight / 2) - (-150 / 1)) + (math.cos((currentBeat2) + 0) * -300), 1)
noteTweenY('defaultPlayerStrumY7', 7, ((screenHeight / 2) - (-150 / 1)) + (math.cos((currentBeat2) + 3) * -300), 1)

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
    if not downscroll then
setProperty('health', 0)
else
if middlescroll then
setProperty('health', 0)
end
end
end