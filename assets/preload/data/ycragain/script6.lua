function onStepHit()
    if curStep == 1296 then
        makeLuaSprite('blackscreen', 'YCRagain/blackscreen', 0, 0);
		setObjectCamera('blackscreen', 'hud');
		addLuaSprite('blackscreen', true);
        makeLuaSprite('bars', 'YCRagain/bars', 0, -10);
		setObjectCamera('bars', 'hud');
		addLuaSprite('bars', true);
        scaleObject('bars', 0.5, 0.35)
        runTimer('fadein', 1.9, 1);
    elseif tag == 'fadein' then
		doTweenAlpha('blackfade', 'blackscreen', 0, 2, 'linear');
        doTweenAlpha('barsfade', 'bars', 0, 1, 'linear');
    end
    if curStep == 1392 then
        doTweenAlpha('blackfade', 'blackscreen', 0, 2, 'linear');
        for i = 0,7 do
		    setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
        end
    end
    if curStep == 1424 then
        doTweenAlpha('barsfade', 'bars', 0, 0.1, 'linear');
        for i = 0,7 do
            setPropertyFromGroup('strumLineNotes', i, 'alpha', 1, 2)
        end
    end
end

function onBeatHit()
    triggerEvent('Add Camera Zoom', 0.025, 0.025)
end

function onSectionHit()
    triggerEvent('Add Camera Zoom', 0.025, 0.025)
end