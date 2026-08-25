# if right clicked while (system level is not 0 AND crouched), decreases system level
execute if predicate ftl:is_crouching unless score .Weapons level < .min powerusage run scoreboard players remove .Weapons level 1 
execute if predicate ftl:is_crouching unless score .Weapons level < .min powerusage run say Decreased WPN level by 1

# if right clicked while standing, increase system level
execute unless predicate ftl:is_crouching run scoreboard players add .Weapons level 1
execute unless predicate ftl:is_crouching run say Increased WPN level by 1

#resets if right click leads to null value
execute if score .Weapons level < .min powerusage run scoreboard players set .Weapons level 0

# end stage calculation and reset
advancement revoke @s only ftl:incrementers/levels/wpnlevinc_clicked
function ftl:scoreboard/calcusage