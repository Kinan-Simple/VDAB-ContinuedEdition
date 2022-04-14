function onCreate()
	-- background shit
	makeLuaSprite('bambiback', 'bambiback', -600, -100);
	setLuaSpriteScrollFactor('bambiback', 0.9, 0.9);
	
	makeLuaSprite('bambifront', 'bambifront', -300, -350);
	setLuaSpriteScrollFactor('bambifront', 0.9, 0.9);
	scaleObject('stagefront', 5.5, 5.5);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		setLuaSpriteScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('blank', 'blank', 1225, -100);
		setLuaSpriteScrollFactor('blank', 0.9, 0.9);
		scaleObject('blank', 1.1, 1.1);
		setPropertyLuaSprite('blank', 'flipX', true); --mirror sprite horizontally

		makeLuaSprite('blank', 'blank', -500, -300);
		setLuaSpriteScrollFactor('blank', 1.3, 1.3);
		scaleObject('blank', 0.9, 0.9);
	end

	addLuaSprite('bambiback', false);
	addLuaSprite('bambifront', false);
	addLuaSprite('blank', false);
	addLuaSprite('blank', false);
	addLuaSprite('blank', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end