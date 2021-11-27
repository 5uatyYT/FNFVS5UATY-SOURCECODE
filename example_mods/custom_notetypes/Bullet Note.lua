function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is a Bullet Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Bullet Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', '5UATY/BULLET_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', 0.6); --Change amount of health to take when you miss like a fucking moron
		end
	end
	--debugPrint('Script started!')
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Bullet Note' then
		if difficulty == 2 then
		        playSound('watchout', 2);
		end
		characterPlayAnim('dad', 'SHOOT', true);
		cameraShake('camGame', 0.01, 0.2)
    end
end

local healthDrain = 0;
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Bullet Note' then
		-- bf anim
		characterPlayAnim('boyfriend', 'hurt', true);
		setProperty('boyfriend.specialAnim', true);

		-- dad anim
		characterPlayAnim('dad', 'SHOOT', true);
		setProperty('dad.specialAnim', true);

		-- health loss | || || |_
		--setProperty('health', getProperty('health') - 0.6);
		healthDrain = healthDrain + 0.6;
		playSound('hahagungobrrr', 1);
	end
end

function onUpdate(elapsed)
	if healthDrain > 0 then
		healthDrain = healthDrain - 0.2 * elapsed;
		setProperty('health', getProperty('health') - 0.2 * elapsed);
		if healthDrain < 0 then
			healthDrain = 0;
		end
	end
end