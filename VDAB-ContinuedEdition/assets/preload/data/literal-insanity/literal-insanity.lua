function onCreate()
	setCharacterX("dad",-250)
	setCharacterY("dad",-100)
end

local MyAss = 0
local YourAss = 0
local holyshit = 0
local ligma = true

function onUpdate(elapsed)
	if ligma then
		noteTweenX("whenthe"..tostring(MyAss), YourAss, _G["defaultPlayerStrumX"..tostring(YourAss)], 0.05, "sineOut")
		noteTweenX("thewhem"..tostring(MyAss), YourAss+4, _G["defaultOpponentStrumX"..tostring(YourAss)], 0.05, "sineOut")
	else
		noteTweenX("whenthes"..tostring(MyAss), YourAss+4, _G["defaultPlayerStrumX"..tostring(YourAss)], 0.05, "sineOut")
		noteTweenX("thewhems"..tostring(MyAss), YourAss, _G["defaultOpponentStrumX"..tostring(YourAss)], 0.05, "sineOut")
	end
	
	if YourAss == 3 then
		if ligma == true then
			ligma = false
		else
			ligma = true
		end
	end
	
	MyAss = MyAss + 1
	if YourAss == 3 then
		holyshit = holyshit + 1
	end
	YourAss = MyAss - holyshit*4
end