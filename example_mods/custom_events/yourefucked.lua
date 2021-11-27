-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'yourefucked' then
			playSound('5uatyisangry', 0.5);
			makeAnimatedLuaSprite('5uatyisangry', '5UATY/5uatyisangry', 180, 1500); --5uatyisangry,
				addAnimationByPrefix('5uatyisangry', 'idle', '5uatyisangry', 12, true);
				setProperty('5uatyisangry.scale.x', getProperty('5uatyisangry.scale.x') + 0.7);
				setProperty('5uatyisangry.scale.y', getProperty('5uatyisangry.scale.y') + 0.7);
				setLuaSpriteScrollFactor('5uatyisangry', 1, 1);

end
		if not lowQuality then
			if difficulty == 2 then --checking if the difficulty is "fucked" (hard)
				setProperty('5uatyisangry.visible', true);
				objectPlayAnimation('5uatyisangry', 'idle', true);
				runTimer('angryscream', 0.5, 1);
				doTweenY('5uatyisangryTweenY', '5uatyisangry', -200, 3, 'linear');
end
		--debugPrint('Event triggered: ', name, duration, targetAlpha);
end
