---
--- @param eventName string
--- @param value1 string
--- @param value2 string
--- @param strumTime float
---

trigger = '0'
function onEvent(eventName, value1, value2, strumTime)
	if eventName == 'camera bounce' then
		if value1 == '1' then
			trigger = '1'
		else
			trigger = '0'
		end
	end
end
local angleshit = 1;
local anglevar = 1;
function onBeatHit()
	if trigger == '1' then
		triggerEvent('Add Camera Zoom', 0.04,0.05)

		if curBeat % 2 == 0 then
			angleshit = anglevar;
		else
			angleshit = -anglevar;
		end
		setProperty('camHUD.angle',angleshit*3)
		setProperty('camGame.angle',angleshit*3)
		doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'circOut')
		doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'circOut')
		doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'circOut')
		doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'circOut')
	else if trigger == '0' then
		setProperty('camHUD.angle',0)
		setProperty('camHUD.x',0)
		setProperty('camHUD.x',0)
		setProperty('camGame.angle',0)
		setProperty('camGame.x',0)
		setProperty('camGame.x',0)
	end
end
end

function onStepHit()
	if trigger == '1' then
	if curStep % 4 == 0 then
		doTweenY('rrr', 'camHUD', -12, stepCrochet*0.002, 'circOut')
		doTweenY('rtr', 'camGame.scroll', 12, stepCrochet*0.002, 'sineIn')
	end
	if curStep % 4 == 2 then
		doTweenY('rir', 'camHUD', 0, stepCrochet*0.002, 'sineIn')
		doTweenY('ryr', 'camGame.scroll', 0, stepCrochet*0.002, 'sineIn')
	end
end
end