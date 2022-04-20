function onCreate()
	-- background shit
	makeLuaSprite('hellscape', 'hellscape', -600, -300);
	setScrollFactor('hellscape', 0.9, 0.9);
	

	addLuaSprite('hellscape', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end