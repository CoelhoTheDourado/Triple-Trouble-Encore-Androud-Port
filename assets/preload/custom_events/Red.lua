function onEvent(n,v1,v2)
	if n == "Red" then
		if not lowQuality then
			runTimer('hide',1);
			makeAnimatedLuaSprite('redload','red',-250,-150)
			addAnimationByPrefix('redload','redpog','red appear',10,false)
			objectPlayAnimation('redload','redpog',false)
			setScrollFactor('redload', 0, 0);
			scaleObject('redload', 1.4, 1.4);
			addLuaSprite('redload', true);
			setObjectCamera('redload', 'hud');
		end
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'hide' then
		removeLuaSprite('redload', false);
    end
end
