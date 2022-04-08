-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Tobg3' then
		duration = tonumber(value1);
		if duration < 0 then
			duration = 0;
		end

		targetAlpha = tonumber(value2);
		if duration == 0 then
        setProperty('bg3.alpha', targetAlpha);

		else
			doTweenAlpha('bg3FadeEventTween', 'bg3', targetAlpha, duration, 'linear');
		end
		-- ñ
	end
end