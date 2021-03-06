--[[Keli'dan the Breaker yells: Closer! Come closer... and burn!
Keli'dan the Breaker yells: Good...luck. You'll need it.
Keli'dan the Breaker yells: Just as you deserve!
Keli'dan the Breaker yells: Who dares interrupt--What is this; what have you done? You'll ruin everything!
Keli'dan the Breaker yells: Your friends will soon be joining you!
]]

function Kelidan_OnCombat(Unit)
	Unit:RegisterEvent("Kelidan_Shadow_Bolt_Volley", 9000, 0)
	Unit:RegisterEvent("Kelidan_Burning_Nova", 14000, 0)
end

function Kelidan_Shadow_Bolt_Volley(Unit)
	if(Unit:GetClosestPlayer() ~= nil) then
		Unit:FullCastSpellOnTarget(36736, Unit:GetClosestPlayer())
	end
end

function Kelidan_Burning_Nova(Unit)
	if(Unit:GetClosestPlayer() ~= nil) then
		Unit:FullCastSpellOnTarget(20229, Unit:GetClosestPlayer())
	end
end

function Kelidan_OnWipe(Unit)
	Unit:RemoveEvents()
end

RegisterUnitEvent(17377, 1, "Kelidan_OnCombat")
RegisterUnitEvent(17377, 4, "Kelidan_OnWipe")