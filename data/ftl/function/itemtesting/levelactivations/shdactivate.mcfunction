# if right clicked while (system level is not 0 AND crouched), decreases system level
execute if predicate ftl:is_crouching unless score .Shields level < .min powerusage run scoreboard players remove .Shields level 1 
execute if predicate ftl:is_crouching unless score .Shields level < .min powerusage run say Decreased SHD level by 1

# if right clicked while standing, increase system level
execute unless predicate ftl:is_crouching run scoreboard players add .Shields level 1
execute unless predicate ftl:is_crouching run say Increased SHD level by 1

#resets if right click leads to null value
execute if score .Shields level < .min powerusage run scoreboard players set .Shields level 0

# end stage calculation and reset
advancement revoke @s only ftl:incrementers/levels/shdlevinc_clicked
function ftl:scoreboard/calcusage