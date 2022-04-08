function onCreate()
	-- background shit
	makeLuaSprite('background','sky',-350,-350)
	addLuaSprite('background',false)
	makeLuaSprite('cloud','cloud',-250,250)
	addLuaSprite('cloud',false)
	scaleObject('cloud', 3.5, 3.5);
	setLuaSpriteScrollFactor('background',0.1,0.1)
	scaleObject('background', 5.5, 5.5);
	
	close(true); --For performance reasons, please make a account for free right now !!!!!!!!!!!!!!!!!!!!!!!!
end