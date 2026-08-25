# if right clicked while (system damage is not 0 AND crouched), decreases damage for system
execute if predicate ftl:is_crouching unless score .Weapons damage < .min powerusage run scoreboard players remove .Weapons damage 1 
execute if predicate ftl:is_crouching unless score .Weapons damage < .min powerusage run say healed WPN by 1

# if right clicked while (system damage is UNDER system level cap AND uncrouched), increases damage for system
execute unless predicate ftl:is_crouching unless score .Weapons damage >= .Weapons level run scoreboard players add .Weapons damage 1
execute unless predicate ftl:is_crouching unless score .Weapons damage >= .Weapons level run say Damaged WPN by 1

#resets if right click leads to null value
execute if score .Weapons damage < .min powerusage run scoreboard players set .Weapons damage 0

# end stage calculation and reset
advancement revoke @s only ftl:incrementers/damage/wpndaminc_clicked
function ftl:scoreboard/calcusage