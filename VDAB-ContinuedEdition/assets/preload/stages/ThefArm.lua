function onCreate()
	-- background shit
	makeLuaSprite('background','ThefArm',-640,-570)
	addLuaSprite('background',false)
	scaleObject('background', 1.5, 1.5);
	
	close(true); --For performance reasons, fuck you
end