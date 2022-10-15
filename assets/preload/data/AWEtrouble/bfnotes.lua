function onStepHit()
    if curStep == 1408 then
        for i = 0, 3 do
            setPropertyFromGroup('playerStrums', i, 'downScroll', false)
            setPropertyFromGroup('playerStrums', i, 'y', 120)
            noteTweenY("NoteMove4", 4, 120, 0.2, cubeInOut)
            noteTweenY("NoteMove5", 5, 120, 0.2, cubeInOut)
            noteTweenY("NoteMove6", 6, 120, 0.2, cubeInOut)
            noteTweenY("NoteMove7", 7, 120, 0.2, cubeInOut)
        end
    for i = 0, getProperty('unspawnNotes.length') do
        if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
            setPropertyFromGroup('unspawnNotes', i, 'flipY', false)
        end
    end
end
    if curStep == 2433 then
    for i = 0, 3 do
        setPropertyFromGroup('playerStrums', i, 'downScroll', true)
        setPropertyFromGroup('playerStrums', i, 'y', 570)
        noteTweenY("NoteMove4", 4, 570, 0.2, cubeInOut)
        noteTweenY("NoteMove5", 5, 570, 0.2, cubeInOut)
        noteTweenY("NoteMove6", 6, 570, 0.2, cubeInOut)
        noteTweenY("NoteMove7", 7, 570, 0.2, cubeInOut)
    end
        for i = 0, getProperty('unspawnNotes.length') do
            if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
                setPropertyFromGroup('unspawnNotes', i, 'flipY', false)
            end
        end
    end
end
