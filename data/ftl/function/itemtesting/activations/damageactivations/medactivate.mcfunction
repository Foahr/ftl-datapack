# if right clicked while (system damage is not 0 AND crouched), decreases damage for system
execute if predicate ftl:is_crouching unless score .Medbay damage < .min powerusage run scoreboard players remove .Medbay damage 1 
execute if predicate ftl:is_crouching unless score .Medbay damage < .min powerusage run say healed MED by 1

# if right clicked while (system damage is UNDER system level cap AND uncrouched), increases damage for system
execute unless predicate ftl:is_crouching unless score .Medbay damage >= .Medbay level run scoreboard players add .Medbay damage 1
execute unless predicate ftl:is_crouching unless score .Medbay damage >= .Medbay level run say Damaged MED by 1

#resets if right click leads to null value
execute if score .Medbay damage < .min powerusage run scoreboard players set .Medbay damage 0

# end stage calculation and reset
advancement revoke @s only ftl:incrementers/damage/meddaminc_clicked
function ftl:scoreboard/calcusage