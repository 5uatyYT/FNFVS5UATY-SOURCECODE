function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health- 0.019);
    end
end
