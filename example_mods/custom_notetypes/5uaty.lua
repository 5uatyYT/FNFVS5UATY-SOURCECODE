function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is a 5uaty
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == '5uaty' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', '5UATY/BULLET5uaty_assets'); --Change texture
		end
	end
	--debugPrint('Script started!')
end