function onCreate()
        makeLuaSprite('blackscreen', 'YCRagain/blackscreen', 0, 0);
        setObjectCamera('blackscreen', 'other');
        addLuaSprite('blackscreen', true);
        runTimer('fadein', 1.9, 1);
    if tag == 'fadein' then
        doTweenAlpha('blackfade', 'blackscreen', 0, 2, 'linear');
    end
end

function onStepHit()
    if curStep == 16 then 
        doTweenAlpha('blackfade', 'blackscreen', 0, 3, 'linear');
    end
    if curStep == 1680 then
        doTweenAlpha('blackfade', 'blackscreen', 1, 5, 'linear');
        noteTweenAlpha("noteGoneOpp1", 0, 0, 5, "quartInOut");
        noteTweenAlpha("noteGoneOpp2", 1, 0, 5, "quartInOut");
        noteTweenAlpha("noteGoneOpp3", 2, 0, 5, "quartInOut");
        noteTweenAlpha("noteGoneOpp4", 3, 0, 5, "quartInOut");
        noteTweenAlpha("noteGone5", 4, 0, 5, "quartInOut");
        noteTweenAlpha("noteGone6", 5, 0, 5, "quartInOut");
        noteTweenAlpha("noteGone7", 6, 0, 5, "quartInOut");
        noteTweenAlpha("noteGone8", 7, 0, 5, "quartInOut");
        doTweenAlpha('hp', 'healthBar', 0, 5, 'quartInOut')
        doTweenAlpha('hpicon1', 'iconP1', 0, 5, 'quartInOut')
        doTweenAlpha('hpicon2', 'iconP2', 0, 5, 'quartInOut')
        doTweenAlpha('score', 'scoreTxt', 0, 5, 'quartInOut')
        doTweenAlpha('timeBar', 'timeBar', 0, 5, 'quartInOut')
        doTweenAlpha('timeBarTxt', 'timeTxt', 0, 5, 'quartInOut')
        doTweenAlpha('botplytxt', 'botplayTxt', 0, 5, 'quartInOut')
    end
end