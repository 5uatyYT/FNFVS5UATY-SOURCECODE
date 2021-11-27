function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is a 5uatyisangry
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == '5uatyisangry' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', '5UATY/BULLET_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', 0.1); --Change amount of health to take when you miss like a fucking moron
		end
	end
	--debugPrint('Script started!')
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == '5uatyisangry' then
		if difficulty == 2 then
	playSound('angryscream', 1);
			makeAnimatedLuaSprite('5uatyisangry', '5UATY/5uatyisangry', -381, 210); --5uatyisangry,
				addAnimationByPrefix('5uatyisangry', 'idle', '5uatyisangry', 12, true);
				setLuaSpriteScrollFactor('5uatyisangry', 1, 1)
		end
		characterPlayAnim('dad', 'fuck', false)
    end
end

local healthDrain = 0;
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == '5uatyisangry' then
		-- bf anim
		characterPlayAnim('boyfriend', 'fuckedintheass', false);
		setProperty('boyfriend.specialAnim', false);

		-- dad anim
		characterPlayAnim('dad', 'Fuck BF', false);
		setProperty('dad.specialAnim', false);

		-- health loss | || || |_
		--setProperty('health', getProperty('health') - 0.1);
		healthDrain = healthDrain + 0.1;
		playSound('lol', 0.5);
	end
end