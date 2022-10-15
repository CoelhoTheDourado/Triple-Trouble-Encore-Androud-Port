function opponentNoteHit(id, direction, noteType, isSustainNote)
    if curStep >= 912 then
        cameraShake('game', 0.01, 0.080)
        setProperty('cameraSpeed', 8)
    end
end

function noteMiss()
    if curStep == 912 then
        setProperty('health', -1)
    end
end