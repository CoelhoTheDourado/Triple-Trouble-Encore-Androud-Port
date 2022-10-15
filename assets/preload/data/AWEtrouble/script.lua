function onSongStart()
    triggerEvent('Fade UI', 1, 0.5)
end

function onSectionHit()
    if curStep >= 0 then
        triggerEvent('Add Camera Zoom', 0.025, 0.025)
    end
    if curStep >= 256 then
        triggerEvent('Add Camera Zoom', 0.05, 0.05)
    end
    if curStep >= 1943 then
        triggerEvent('Add Camera Zoom', 0.07, 0.07)
    end
end

function onBeatHit()
    if curBeat >= 32 then
    triggerEvent('Add Camera Zoom', 0.025, 0.025)
    end
    if curBeat >= 64 then
        triggerEvent('Add Camera Zoom', 0.050, 0.050)
    end
end

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
    if curStep == 15 then 
        doTweenAlpha('blackfade', 'blackscreen', 0, 3, 'linear');
    end
    if curStep == 1 then
        setTextString("botplayTxt", "")
    end
    if curStep == 128 then
        setTextString("botplayTxt", "TRIPLE TROUBLE")
    end
    if curStep == 5248 then
        doTweenAlpha('boyfriendFadeEventTween', 'boyfriend', 0, 1, 'linear');
        setPropertyFromGroup('opponentStrums', 0, 'linear', 0, 2)
        setPropertyFromGroup('opponentStrums', 1, 'linear', 0, 2)
        setPropertyFromGroup('opponentStrums', 2, 'linear', 0, 2)
        setPropertyFromGroup('opponentStrums', 3, 'linear', 0, 2)
    end
    if curStep == 5249 then
        doTweenAlpha('blackfade', 'blackscreen', 1, 2, 'linear');
        noteTweenAlpha("noteGoneOpp1", 0, 0, 2, "quartInOut");
        noteTweenAlpha("noteGoneOpp2", 1, 0, 2, "quartInOut");
        noteTweenAlpha("noteGoneOpp3", 2, 0, 2, "quartInOut");
        noteTweenAlpha("noteGoneOpp4", 3, 0, 2, "quartInOut");
        noteTweenAlpha("noteGone5", 4, 0, 2, "quartInOut");
        noteTweenAlpha("noteGone6", 5, 0, 2, "quartInOut");
        noteTweenAlpha("noteGone7", 6, 0, 2, "quartInOut");
        noteTweenAlpha("noteGone8", 7, 0, 2, "quartInOut");
        doTweenAlpha('hp', 'healthBar', 0, 2, 'quartInOut')
        doTweenAlpha('hpicon1', 'iconP1', 0, 2, 'quartInOut')
        doTweenAlpha('hpicon2', 'iconP2', 0, 2, 'quartInOut')
        doTweenAlpha('score', 'scoreTxt', 0, 2, 'quartInOut')
        doTweenAlpha('timeBar', 'timeBar', 0, 2, 'quartInOut')
        doTweenAlpha('timeBarTxt', 'timeTxt', 0, 2, 'quartInOut')
        doTweenAlpha('botplytxt', 'botplayTxt', 0, 2, 'quartInOut')
    end
end
    


function opponentNoteHit()
    if curStep >= 1264 then
    cameraShake('game', 0.02, 0.100)
    end
    if curStep >= 1280 then
        cameraShake('game', 0, 0)
    end
    if getProperty('dad.animation.curAnim.name') == 'hey' then
        triggerEvent('Add Camera Zoom', 0.1, 0.1)
        if getHealth() > 0.12 then
        setProperty('health', getProperty('health') - 0.06)
        end
    end
    if getHealth() > 0.12 then
            setProperty('health', getProperty('health') - 0.027)
    end
    if curStep >= 5248 then
        cameraShake('game', 0.03, 0.200)
    end
end