function Huntsman_Mount(Unit, event, miscUnit, misc)
	if((Unit:GetHealthPct(16151) < 25) and (Didthat == 0)) then
		Unit:FullCastSpell(29770)
		Didthat = 1
	else
	end
end

function Huntsman_Shadow_Cleave(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(29832, Unit:GetClosestPlayer())
end

function Huntsman_Intangible_Presence(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(29833, Unit:GetClosestPlayer())
end

function Huntsman_Berserker_Charge(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(26561, Unit:GetRandomPlayer())
end

function Huntsman(Unit, event, miscUnit, misc)
	Unit:RegisterEvent("Huntsman_Mount", 1000, 1)
	Unit:RegisterEvent("Huntsman_Shadow_Cleave", 8000, 0)
	Unit:RegisterEvent("Huntsman_Intangible_Presence", 30000, 0)
	Unit:RegisterEvent("Huntsman_Berserker_Charge", 600000, 0)
end

RegisterUnitEvent(15550, 1, "Huntsman")

--[[Attumen the Huntsman yells: Another trophy to add to my collection!
Attumen the Huntsman yells: Come Midnight, let's disperse this petty rabble!
Attumen the Huntsman yells: Cowards! Wretches!
Attumen the Huntsman yells: It was... inevitable.
Attumen the Huntsman yells: Perhaps you would rather test yourselves against a more formidable opponent?!
Attumen the Huntsman yells: Weapons are merely a convenience for a warrior of my skill!
Attumen the Huntsman yells: Who dares attack the steed of the Huntsman?]]