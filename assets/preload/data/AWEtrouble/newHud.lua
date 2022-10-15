
function onStepHit()

  if curStep == 128 then

  setProperty('healthBar.x', 55);
  setProperty('healthBarBG.x', 55);
  setProperty('botplayTxt.x', 625);
  setProperty('botplayTxt.y', 70);
  setProperty('scoreTxt.visible', false);
  --screenCenter('botplayTxt');

  makeLuaText('score', 'score:', 0, 20, 20);
  setTextSize('score', 50);
  setTextFont('score', 'sonic1.ttf');
  setTextColor('score', 'fcfc00');
  addLuaText('score');

  makeLuaText('score2', '', 0, 200, 20);
  setTextSize('score2', 50);
  setTextFont('score2', 'sonic1.ttf');
  setTextColor('score2', 'ffffff');
  addLuaText('score2');

  makeLuaText('misses', 'misses:', 0, 20, 70);
  setTextSize('misses', 50);
  setTextFont('misses', 'sonic1.ttf');
  setTextColor('misses', 'fcfc00');
  addLuaText('misses');

  makeLuaText('misses2', '', 0, 200, 70);
  setTextSize('misses2', 50);
  setTextFont('misses2', 'sonic1.ttf');
  setTextColor('misses2', 'ffffff');
  addLuaText('misses2');

  makeLuaText('rating', 'rating:', 0, 20, 120);
  setTextSize('rating', 50);
  setTextFont('rating', 'sonic1.ttf');
  setTextColor('rating', 'fcfc00');
  addLuaText('rating');

  makeLuaText('rating2', '', 0, 200, 120);
  setTextSize('rating2', 50);
  setTextFont('rating2', 'sonic1.ttf');
  setTextColor('rating2', 'ffffff');
  addLuaText('rating2');

  makeLuaText('health', 'health:', 0, 20, 170);
  setTextSize('health', 50);
  setTextFont('health', 'sonic1.ttf');
  setTextColor('health', 'fcfc00');
  addLuaText('health');

  makeLuaText('health2', '', 0, 200, 170);
  setTextSize('health2', 50);
  setTextFont('health2', 'sonic1.ttf');
  setTextColor('health2', 'ffffff');
  addLuaText('health2');

  makeLuaText('player', '', 0, 1040, 560);
  setTextSize('player', 20);
  setTextFont('player', 'sonic3.ttf');
  setTextColor('player', 'fcfc00');
  addLuaText('player');

  makeLuaText('X', 'X', 0, 1000, 620);
  setTextSize('X', 30);
  setTextFont('X', 'sonic3.ttf');
  setTextColor('X', 'fcfc00');
  addLuaText('X');

  makeLuaText('lives', '01', 0, 1040, 620);
  setTextSize('lives', 30);
  setTextFont('lives', 'sonic3.ttf');
  setTextColor('lives', 'ffffff');
  addLuaText('lives');

  setObjectCamera('score', 'hud')
  setObjectCamera('score2', 'hud')
  setObjectCamera('misses', 'hud')
  setObjectCamera('misses2', 'hud')
  setObjectCamera('rating', 'hud')
  setObjectCamera('rating2', 'hud')
  setObjectCamera('health', 'hud')
  setObjectCamera('health2', 'hud')
  setObjectCamera('player', 'hud')
  setObjectCamera('X', 'hud')
  setObjectCamera('lives', 'hud')
  end




end

function onUpdatePost()
  
  --what the texts display
  setTextString('score2', getProperty('songScore'))
  setTextString('misses2', getProperty('songMisses'))
  setTextString('health2', math.floor(getProperty('health')*50))
  setTextString('player', boyfriendName)
  --setTextString('rating2', getProperty('ratingName'))

  --due to the font used not having uppercase letters the names where made to be lowercased
  if getProperty('ratingFC') == 'SFC' then
    setTextString('rating2', 'sfc')
  end

  if getProperty('ratingFC') == 'GFC' then
    setTextString('rating2', 'gfc')
  end

  if getProperty('ratingFC') == 'FC' then
    setTextString('rating2', 'fc')
  end

  if getProperty('ratingFC') == 'SDCB' then
    setTextString('rating2', 'sdcb')
  end

  if getProperty('ratingFC') == 'Clear' then
    setTextString('rating2', 'clear')
  end

  if getProperty('ratingFC') == '' then
    setTextString('rating2', '?')
  end

  -- specific name changes for certain characters
  if boyfriendName == 'coolerbf' then
    setTextString('player', 'Boyfriend')
  end

  if boyfriendName == 'pico-player' then
    setTextString('player', 'Pico')
  end

  if boyfriendName == 'tankman-player' then
    setTextString('player', 'Tankman')
  end

  if boyfriendName == 'bf-christmas' then
      setTextString('player', 'Boyfriend')
  end


  --if boyfriendName == 'character json name' then  <-- use this if you want the name on the fake lives counter to be different for a specific character
    --setTextString('player', 'ingame name')
  --end

  --strumline changes


  if curStep == 128 then
    

        setProperty('score.y', 520)
        setProperty('score2.y', 520)
        setProperty('misses.y', 570)
        setProperty('misses2.y', 570)
        setProperty('rating.y', 620)
        setProperty('rating2.y', 620)
        setProperty('health.y', 670)
        setProperty('health2.y', 670)

        setProperty('iconP1.y', 15)

        setProperty('player.y', 20)
        setProperty('X.y', 90)
        setProperty('lives.y', 90)
    end






    setProperty('iconP2.x', 20);
    setProperty('iconP1.x', 600);
  --setProperty('iconP1.visible', false);
  --setProperty('scoreTxt.x', 30);
end