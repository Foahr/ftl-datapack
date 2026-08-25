# if right clicked while (system damage is not 0 AND crouched), decreases damage for system
execute if predicate ftl:is_crouching unless score .Shields damage < .min powerusage run scoreboard players remove .Shields damage 1 
execute if predicate ftl:is_crouching unless score .Shields damage < .min powerusage run say healed SHD by 1

# if right clicked while (system damage is UNDER system level cap AND uncrouched), increases damage for system
execute unless predicate ftl:is_crouching unless score .Shields damage >= .Shields level run scoreboard players add .Shields damage 1
execute unless predicate ftl:is_crouching unless score .Shields damage >= .Shields level run say Damaged SHD by 1

#resets if right click leads to null value
execute if score .Shields damage < .min powerusage run scoreboard players set .Shields damage 0

# end stage calculation and reset
advancement revoke @s only ftl:incrementers/damage/shddaminc_clicked
function ftl:scoreboard/calcusage