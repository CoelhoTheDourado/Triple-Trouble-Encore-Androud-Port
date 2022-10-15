function onCreate()

	makeAnimatedLuaSprite('staticBACKGROUND2', 'YCRagain/staticBACKGROUND2', 500, 0);
	setLuaSpriteScrollFactor('staticBACKGROUND2', 1.2, 1.2);
	scaleObject('staticBACKGROUND2', 2.5, 2.5);

	addAnimationByPrefix('staticBACKGROUND2', 'idle', 'menuSTATICNEW instance ', 24, true);
    addLuaSprite('staticBACKGROUND2', false);

	makeLuaSprite('YCR_Grass', 'YCRagain/Grass', 200, 220)
	makeLuaSprite('YCR_trees', 'YCRagain/trees', -200, 0)
	makeLuaSprite('YCR_TreesFront', 'YCRagain/TreesFront', -250, 0)
	makeLuaSprite('YCR_GrassBack', 'YCRagain/GrassBack', 0, 150)
	makeLuaSprite('YCR_TopOverlay', 'YCRagain/TopOverlay', 0, 350)
	setScrollFactor('YCR_TreesFront', 0.5, 0.5);
	setScrollFactor('YCR_trees', 0.5, 0.5);
	setScrollFactor('YCR_GrassBack', 0.5, 0.5);
	setProperty('YCR_TreesFront.antialiasing', true);
	setProperty('YCR_floor.antialiasing', true);
	setProperty('YCR_trees.antialiasing', true);
	addLuaSprite('YCR_GrassBack', false)
	addLuaSprite('YCR_trees', false)
	addLuaSprite('YCR_Grass', false)
	addLuaSprite('YCR_TopOverlay', true)
	addLuaSprite('YCR_TreesFront', true)

	setProperty('YCR_TopOverlay.visible', false);

	scaleObject('YCR_GrassBack', 0.7, 0.7);
	scaleObject('YCR_trees', 0.9, 0.9);
	scaleObject('YCR_Grass', 0.9, 0.9);
	scaleObject('YCR_TopOverlay', 0.9, 0.9);

	makeLuaSprite('mountains', 'YCRagain/mountains', -7800, -3600)
	setProperty('mountains.antialiasing', false);
	scaleObject('mountains', 6, 5);

	addLuaSprite('mountains', false)

	makeLuaSprite('hillback', 'YCRagain/hillback', -4650, -2770)
	setProperty('hillback.antialiasing', false);
	scaleObject('hillback', 4, 4);
	setScrollFactor('hillback', 1, 1);

	addLuaSprite('hillback', false)

	makeLuaSprite('greenhillback2', 'YCRagain/greenhillback2', -6150, -4200)
	setProperty('greenhillback2.antialiasing', false);
	scaleObject('greenhillback2', 5, 5);
	setScrollFactor('greenhillback2', 0.8, 0.8);

	addLuaSprite('greenhillback2', false)

	makeLuaSprite('greenhillback1', 'YCRagain/greenhillback1', -6040, -3800)
	setProperty('greenhillback1.antialiasing', false);
	scaleObject('greenhillback1', 5, 5);

	addLuaSprite('greenhillback1', false)

	makeLuaSprite('greenhill', 'YCRagain/greenhill', -6000, -4000)
	setProperty('greenhill.antialiasing', false);
	scaleObject('greenhill', 5, 5);

	addLuaSprite('greenhill', false)

end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == '2' then
            setProperty('staticBACKGROUND2.visible', false);
			setProperty('YCR_TopOverlay.visible', false);
			setProperty('YCR_Grass.visible', false);
			setProperty('YCR_trees.visible', false);
			setProperty('YCR_GrassBack.visible', false);
			setProperty('YCR_TreesFront.visible', false);
			setProperty('greenhill.visible', true);
			setProperty('greenhillback1.visible', true);
			setProperty('greenhillback2.visible', true);
			setProperty('hillback.visible', true);
			setProperty('mountains.visible', true);
        end

        if value1 == '1' then
            setProperty('staticBACKGROUND2.visible', true);
			setProperty('YCR_Grass.visible', true);
			setProperty('YCR_trees.visible', true);
			setProperty('YCR_GrassBack.visible', true);
			setProperty('YCR_TreesFront.visible', true);
			setProperty('greenhill.visible', false);
			setProperty('greenhillback1.visible', false);
			setProperty('greenhillback2.visible', false);
			setProperty('hillback.visible', false);
			setProperty('mountains.visible', false);
        end
    end
end
           
