function onCreatePost()
  makeLuaText("message", "Die", 500, 30, 50)
  setTextAlignment("message", "left")
  addLuaText("message")

  makeLuaText("engineText", "Scopomania.", 500, 30, 30)
  setTextAlignment("engineText", "left")
  addLuaText("engineText")

  if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
      setProperty('message.y', 680)
      setProperty('engineText.y', 660)
  end
end


function onUpdate(elapsed)
	if curStep == 0 then
		started = true
	end
songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/60)
doTweenY('opponentmove', 'dad', 100 - 400*math.sin((currentBeat+12*12)*math.pi), 2)
end 