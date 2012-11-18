function Moroes_Enrage(Unit, event, miscUnit, misc)
	if((Unit:GetHealthPct() < 30) and (Didthat == 0)) then
		Unit:FullCastSpell(44779)
		Didthat = 1
	else
	end
end

function Moroes_Gouge(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(28456, Unit:GetClosestPlayer())
end

function Moroes_Blind(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(34654, Unit:GetClosestPlayer())
end

function Moroes_Vanish(Unit, event, miscUnit, misc)
	Unit:FullCastSpell(41476)
end

function Moroes_Garrote(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(37066, Unit:GetRandomPlayer())
end

function Moroes(Unit, event, miscUnit, misc)
	Unit:RegisterEvent("Moroes_Enrage", 1000, 1)
	Unit:RegisterEvent("Moroes_Gouge", 15000, 0)
	Unit:RegisterEvent("Moroes_Blind", 20000, 0)
	Unit:RegisterEvent("Moroes_Vanish", 60000, 0)
	Unit:RegisterEvent("Moroes_Garrote", 75000, 0)
end

RegisterUnitEvent(15687, 1, "Moroes")

--[[Moroes yells: Hm, unannounced visitors. Preparations must be made...
Moroes yells: How terribly clumsy of me.
Moroes yells: Now, where was I? Oh, yes...
Moroes yells: Oh, I've gone and made a mess...
Moroes yells: You rang?
Moroes says: The master has business in the rooms above.
Moroes says: The Master is deep in study.
Moroes says: The master is meeting with his apprentice.
Moroes says: The Master will return from Stormwind soon....]]