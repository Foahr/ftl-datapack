# if right clicked while (system level is not 0 AND crouched), decreases system level
execute if predicate ftl:is_crouching unless score .Medbay level < .min powerusage run scoreboard players remove .Medbay level 1 
execute if predicate ftl:is_crouching unless score .Medbay level < .min powerusage run say Decreased MED level by 1

# if right clicked while standing, increase system level
execute unless predicate ftl:is_crouching run scoreboard players add .Medbay level 1
execute unless predicate ftl:is_crouching run say Increased MED level by 1

#resets if right click leads to null value
execute if score .Medbay level < .min powerusage run scoreboard players set .Medbay level 0

# end stage calculation and reset
advancement revoke @s only ftl:incrementers/levels/medlevinc_clicked
function ftl:scoreboard/calcusage