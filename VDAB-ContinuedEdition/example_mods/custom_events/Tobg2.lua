-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Tobg2' then
		duration = tonumber(value1);
		if duration < 0 then
			duration = 0;
		end

		targetAlpha = tonumber(value2);
		if duration == 0 then
        setProperty('bg2.alpha', targetAlpha);

		else
			doTweenAlpha('bg2FadeEventTween', 'bg2', targetAlpha, duration, 'linear');
		end
		-- ñ
	end
end