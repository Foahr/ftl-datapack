# if right clicked while (system level is not 0 AND crouched), decreases system level
execute if predicate ftl:is_crouching unless score .Engines level < .min powerusage run scoreboard players remove .Engines level 1 
execute if predicate ftl:is_crouching unless score .Engines level < .min powerusage run say Decreased ENG level by 1

# if right clicked while standing, increase system level
execute unless predicate ftl:is_crouching run scoreboard players add .Engines level 1
execute unless predicate ftl:is_crouching run say Increased ENG level by 1

#resets if right click leads to null value
execute if score .Engines level < .min powerusage run scoreboard players set .Engines level 0

# end stage calculation and reset
advancement revoke @s only ftl:incrementers/levels/englevinc_clicked
function ftl:scoreboard/calcusage