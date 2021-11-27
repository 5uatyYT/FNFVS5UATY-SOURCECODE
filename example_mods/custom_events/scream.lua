-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'scream' then
			playSound('hayyy', 1);
end
		--debugPrint('Event triggered: ', name, duration, targetAlpha);

end
