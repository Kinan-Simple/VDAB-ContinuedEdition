function onUpdatePost()
	songPos = getSongPosition()

	for x = 0,3,1 do
		setPropertyFromGroup("opponentStrums",x,"direction",(math.tan(((songPos/4000000)*(curBpm * 200 - bpm*200))) * 16)+90)
	end
	
	notesLenght = getProperty("notes.length")
	for i = 0,notesLenght,1 do
		BBB = getPropertyFromGroup("notes",i,"y")
		setPropertyFromGroup("notes",i,"angle",(BBB/65536)*BBB*64)
	end
end