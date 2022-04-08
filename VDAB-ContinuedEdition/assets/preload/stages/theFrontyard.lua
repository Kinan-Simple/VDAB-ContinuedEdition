function onCreate()
	-- background shit
	makeLuaSprite('background','theVoid',-2500,-2000)
	addLuaSprite('background',false)
	setLuaSpriteScrollFactor('background',0.1,0.1)
	scaleObject('background', 2, 2);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end