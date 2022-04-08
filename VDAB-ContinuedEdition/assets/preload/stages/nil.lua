function onCreate()
	-- background shit
	makeLuaSprite('background','nil',-320,-320)
	addLuaSprite('background',false)
	setLuaSpriteScrollFactor('background',0.1,0.1)
	scaleObject('background', 12, 12);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end