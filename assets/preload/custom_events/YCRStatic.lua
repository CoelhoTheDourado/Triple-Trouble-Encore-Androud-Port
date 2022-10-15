function onEvent(name)
	if name == 'YCRStatic' then
		makeAnimatedLuaSprite('static', 'YCRStatic', -600, -210);
		luaSpriteAddAnimationByPrefix('static', 'hello_there', 'YCRStatic instance 1' , 24, false)
		scaleLuaSprite('static', 5.5, 5.5)
		addLuaSprite('static', true)
		runTimer('fade', 1.63);
		setObjectCamera('static', 'other');
	end
end

function onTimerCompleted(tag, loops, loopsleft)
    if tag == 'fade' then
		doTweenAlpha('remove', 'static', 0, 0.3, 'linear');
    end
end
    
function onTweenCompleted(tag)
    if tag == 'remove' then
		removeLuaSprite('static', true);
		cameraSetTarget('dad')
    end
end
