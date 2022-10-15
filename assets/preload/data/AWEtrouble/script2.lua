local notePositions = {}

function onStepHit()
    if curStep == 1408 then
    notePositions = {
        defaultPlayerStrumX0,
        defaultPlayerStrumX1,
        defaultPlayerStrumX2,
        defaultPlayerStrumX3,
        defaultOpponentStrumX0,
        defaultOpponentStrumX1,
        defaultOpponentStrumX2,
        defaultOpponentStrumX3
    }
    
        for i = 1, 8, 1 do
            noteTweenX('noteTween'..i, i-1, notePositions[i], 0.8, 'linear')
        end
    end
    if curStep == 2432 then
            notePositions = {
        defaultPlayerStrumX0,
        defaultPlayerStrumX1,
        defaultPlayerStrumX2,
        defaultPlayerStrumX3,
        defaultOpponentStrumX0,
        defaultOpponentStrumX1,
        defaultOpponentStrumX2,
        defaultOpponentStrumX3
    }
    
        for i = 1, 8, 1 do
            noteTweenX('noteTween'..i, i+1, notePositions[i], 0.5, 'linear')
        end
    end
    if curStep == 2944 then
        notePositions = {
    defaultPlayerStrumX0,
    defaultPlayerStrumX1,
    defaultPlayerStrumX2,
    defaultPlayerStrumX3,
    defaultOpponentStrumX0,
    defaultOpponentStrumX1,
    defaultOpponentStrumX2,
    defaultOpponentStrumX3
}

        for i = 1, 8, 1 do
            noteTweenX('noteTween'..i, i+3, notePositions[i], 0.01, 'linear')
        end
    end
    if curStep == 4224 then
        for i = 0, 3 do
            setPropertyFromGroup('opponentStrums', i, 'downScroll', false)
            setPropertyFromGroup('opponentStrums', i, 'y', 120)
        end
        for i = 0, getProperty('unspawnNotes.length') do
            if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
                setPropertyFromGroup('unspawnNotes', i, 'flipY', false)
            end
        end
        noteTweenX("NoteMove5", 4, 416, 1.2, cubeInOut)
        noteTweenX("NoteMove6", 5, 528, 1.2, cubeInOut)
        noteTweenX("NoteMove7", 6, 640, 1.2, cubeInOut)
        noteTweenX("NoteMove8", 7, 752, 1.2, cubeInOut)
        noteTweenAlpha("noteGoneOpp1", 0, 0.2, 1.2, "quartInOut");
        noteTweenAlpha("noteGoneOpp2", 1, 0.2, 1.2, "quartInOut");
        noteTweenAlpha("noteGoneOpp3", 2, 0.2, 1.2, "quartInOut");
        noteTweenAlpha("noteGoneOpp4", 3, 0.2, 1.2, "quartInOut");
    end
    if curStep >= 4225 then
        noteTweenX("NoteMove1", 0, 416, 1.2, cubeInOut)
        noteTweenX("NoteMove2", 1, 528, 1.2, cubeInOut)
        noteTweenX("NoteMove3", 2, 640, 1.2, cubeInOut)
        noteTweenX("NoteMove4", 3, 752, 1.2, cubeInOut)
    end
        if curStep == 128 then
            if downscroll then
            for i = 0, 3 do
                setPropertyFromGroup('opponentStrums', i, 'downScroll', false)
                setPropertyFromGroup('opponentStrums', i, 'y', 120)
            end
            for i = 0, getProperty('unspawnNotes.length') do
                if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
                    setPropertyFromGroup('unspawnNotes', i, 'flipY', false)
                end
            end
        end
    end
        if curStep == 1152 then
            if downscroll then
            for i = 0, 3 do
                setPropertyFromGroup('opponentStrums', i, 'downScroll', true)
                setPropertyFromGroup('opponentStrums', i, 'y', 120)
            end
            for i = 0, getProperty('unspawnNotes.length') do
                if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
                    setPropertyFromGroup('unspawnNotes', i, 'flipY', false)
                end
            end
        end
    end
end