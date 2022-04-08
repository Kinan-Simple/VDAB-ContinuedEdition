function onCreate()
	-- background shit
	makeLuaSprite('background','funkinhell',-500,-200)
	addLuaSprite('background',false)
	setLuaSpriteScrollFactor('background',0.2,0.2)
	scaleObject('background', 1, 1);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end