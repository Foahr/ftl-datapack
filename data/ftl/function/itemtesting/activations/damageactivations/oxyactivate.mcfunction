# if right clicked while (system damage is not 0 AND crouched), decreases damage for system
execute if predicate ftl:is_crouching unless score .Oxygen damage < .min powerusage run scoreboard players remove .Oxygen damage 1 
execute if predicate ftl:is_crouching unless score .Oxygen damage < .min powerusage run say healed OXY by 1

# if right clicked while (system damage is UNDER system level cap AND uncrouched), increases damage for system
execute unless predicate ftl:is_crouching unless score .Oxygen damage >= .Oxygen level run scoreboard players add .Oxygen damage 1
execute unless predicate ftl:is_crouching unless score .Oxygen damage >= .Oxygen level run say Damaged OXY by 1

#resets if right click leads to null value
execute if score .Oxygen damage < .min powerusage run scoreboard players set .Oxygen damage 0

# end stage calculation and reset
advancement revoke @s only ftl:incrementers/damage/oxydaminc_clicked
function ftl:scoreboard/calcusage