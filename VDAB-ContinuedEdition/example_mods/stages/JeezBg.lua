function onCreate()	
	makeLuaSprite('jeez', 'jeez', -200, -200)
	setLuaSpriteScrollFactor('jeez', 0.9, 0.9); 
	addLuaSprite('jeez')  
end
function onCreatePost()
	addGlitchEffect('jeez', 2, 2);
end