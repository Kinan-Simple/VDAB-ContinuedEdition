function onUpdate(elapsed)
songPos = getSongPosition()
local currentBeat = (songPos/1000)
doTweenX('opponentmove', 'gf', -300 - 3300*math.sin((currentBeat+12*12)*math.pi), 2)
if curStep > 2960 then
songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/60)
noteTweenY('defaultPlayerStrumY0', 4, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + 0) * 300), 0.01)
noteTweenY('defaultPlayerStrumY1', 5, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + 1) * 300), 0.01)
noteTweenY('defaultPlayerStrumY2', 6, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + 2) * 300), 0.01)
noteTweenY('defaultPlayerStrumY3', 7, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + 3) * 300), 0.01)
noteTweenY('defaultPlayerStrumY0', 4, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + 0) * 300), 0.01)
noteTweenY('defaultPlayerStrumY1', 5, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + 1) * 300), 0.01)
noteTweenY('defaultPlayerStrumY2', 6, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + 2) * 300), 0.01)
noteTweenY('defaultPlayerStrumY3', 7, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + 3) * 300), 0.01)
noteTweenY('fake1', 0, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + (4) * 2) * 300), 0.01)
noteTweenY('fake2', 1, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + (5) * 2) * 300), 0.01)
noteTweenY('fake3', 2, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + (6) * 2) * 300), 0.01)
noteTweenY('fake4', 3, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + (7) * 2) * 300), 0.01)
noteTweenY('defaultFPlayerStrumY0', 0, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + (4) * 2) * 300), 0.01)
noteTweenY('defaultFPlayerStrumY1', 1, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + (5) * 2) * 300), 0.01)
noteTweenY('defaultFPlayerStrumY2', 2, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + (6) * 2) * 300), 0.01)
noteTweenY('defaultFPlayerStrumY3', 3, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + (7) * 2) * 300), 0.01)

songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/30)
noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0 - 563*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 - 563 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2 - 563*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 - 563 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)

noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 + 563*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 + 563 - 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 + 563*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 + 563 - 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
setPropertyFromClass('ClientPrefs', 'ghostTapping', false)
if ghostTapping then
end
end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
if curStep > 2960 then
cameraShake(game, 0.015, 0.2)
cameraSetTarget('dad')
doTweenZoom('camerazoom','camGame',1.05,0.15,'quadInOut')
setProperty('health', getProperty('health') - 1 * ((getProperty('health')/22))/6)
end
end

function onUpdate(elapsed)
songPos = getSongPosition()
local currentBeat = (songPos/1000)
doTweenX('opponentmove', 'gf', -300 - 3300*math.sin((currentBeat+12*12)*math.pi), 2)
if curStep > 2960 then
songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/60)
noteTweenY('defaultPlayerStrumY0', 4, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + 0) * 300), 0.01)
noteTweenY('defaultPlayerStrumY1', 5, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + 1) * 300), 0.01)
noteTweenY('defaultPlayerStrumY2', 6, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + 2) * 300), 0.01)
noteTweenY('defaultPlayerStrumY3', 7, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + 3) * 300), 0.01)
noteTweenY('defaultPlayerStrumY0', 4, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + 0) * 300), 0.01)
noteTweenY('defaultPlayerStrumY1', 5, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + 1) * 300), 0.01)
noteTweenY('defaultPlayerStrumY2', 6, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + 2) * 300), 0.01)
noteTweenY('defaultPlayerStrumY3', 7, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + 3) * 300), 0.01)
noteTweenY('fake1', 0, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + (4) * 2) * 300), 0.01)
noteTweenY('fake2', 1, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + (5) * 2) * 300), 0.01)
noteTweenY('fake3', 2, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + (6) * 2) * 300), 0.01)
noteTweenY('fake4', 3, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + (7) * 2) * 300), 0.01)
noteTweenY('defaultFPlayerStrumY0', 0, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + (4) * 2) * 300), 0.01)
noteTweenY('defaultFPlayerStrumY1', 1, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + (5) * 2) * 300), 0.01)
noteTweenY('defaultFPlayerStrumY2', 2, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + (6) * 2) * 300), 0.01)
noteTweenY('defaultFPlayerStrumY3', 3, ((screenHeight / 2) - (157 / 2)) + (math.cos((currentBeat) + (7) * 2) * 300), 0.01)

songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/30)
noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0 - 563*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 - 563 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2 - 563*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 - 563 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)

noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 + 563*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 + 563 - 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 + 563*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 + 563 - 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
setPropertyFromClass('ClientPrefs', 'ghostTapping', false)
if ghostTapping then
end
end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
if curStep > 2960 then
cameraShake(game, 0.015, 0.2)
cameraSetTarget('dad')
doTweenZoom('camerazoom','camGame',1.05,0.15,'quadInOut')
setProperty('health', getProperty('health') - 1 * ((getProperty('health')/22))/6)
end
end

function noteMiss(direction)
if curStep > 2960 then
setProperty('health', getProperty('health') + 0.025)
end
function noteMissPress(direction)
setProperty('health', getProperty('health') + 0.025)
end
if getProperty('health') > 1.6 then
doTweenAlpha('iconDadFadeEventTween', 'iconP2', 0, 0.25, 'linear');
dadLosing = true
else
if dadLosing == true then
doTweenAlpha('iconDadFadeEventTween', 'iconP2', 1, 0.25, 'linear');
dadLosing = false
end
end
if getProperty('health') < 0.4 then
doTweenAlpha('iconBFFadeEventTween', 'iconP1', 0, 0.25, 'linear');
boyfriendLosing = true
else
if boyfriendLosing == true then
doTweenAlpha('iconBFFadeEventTween', 'iconP1', 1, 0.25, 'linear');
boyfriendLosing = false
end
end
end