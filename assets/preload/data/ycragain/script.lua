function onCreate()
    triggerEvent('Play Animation', 1)

    setProperty('cameraSpeed', 2.5)
end

function onStepHit()
    if curStep == 784 then
        setProperty('cameraSpeed', 5)
    end
    if curStep == 1395 then
        setProperty('cameraSpeed', 15)
    end
    if curStep == 528 then
        setProperty('cameraSpeed', 3)
    end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
        cameraShake('game', 0.01, 0.060)
    if getProperty('dad.animation.curAnim.name') == 'hey' then
        cameraShake('game', 0.02, 0.100)
        triggerEvent('Add Camera Zoom', 0.025, 0.025)
    end
end