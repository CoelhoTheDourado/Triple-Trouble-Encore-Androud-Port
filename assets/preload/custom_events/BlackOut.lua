function onEvent(name, value1, value2)
	if name == 'BlackOut' then
		if value1 == 'true' then
		makeLuaSprite('BlackFlash', 'BlackFlash', -700, -60);
		scaleObject('BlackFlash', 30, 30);
		addLuaSprite('BlackFlash', true)
		setProperty('BlackFlash.visible', true);
		setObjectCamera('BlackFlash', 'other');
		elseif value1 == 'false' then
		setProperty('BlackFlash.visible', false)
			end
		end
	end