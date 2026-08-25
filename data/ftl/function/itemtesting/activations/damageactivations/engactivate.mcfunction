# if right clicked while (system damage is not 0 AND crouched), decreases damage for system
execute if predicate ftl:is_crouching unless score .Engines damage < .min powerusage run scoreboard players remove .Engines damage 1 
execute if predicate ftl:is_crouching unless score .Engines damage < .min powerusage run say healed ENG by 1

# if right clicked while (system damage is UNDER system level cap AND uncrouched), increases damage for system
execute unless predicate ftl:is_crouching unless score .Engines damage >= .Engines level run scoreboard players add .Engines damage 1
execute unless predicate ftl:is_crouching unless score .Engines damage >= .Engines level run say Damaged ENG by 1

#resets if right click leads to null value
execute if score .Engines damage < .min powerusage run scoreboard players set .Engines damage 0

# end stage calculation and reset
advancement revoke @s only ftl:incrementers/damage/engdaminc_clicked
function ftl:scoreboard/calcusage