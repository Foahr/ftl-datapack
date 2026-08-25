# if right clicked while (system power is not 0 AND crouched), decreases power for system
execute if predicate ftl:is_crouching unless score .Medbay power < .min powerusage run scoreboard players remove .Medbay power 1 
execute if predicate ftl:is_crouching unless score .Medbay power < .min powerusage run say Decreased MED power by 1

# if right clicked while (powerusage is UNDER reactor cap AND power is UNDER level cap AND uncrouched), increases power for system
execute unless predicate ftl:is_crouching unless score .total powerusage >= .Reactor level unless score .Medbay power >= .Medbay level run scoreboard players add .Medbay power 1
execute unless predicate ftl:is_crouching unless score .total powerusage >= .Reactor level unless score .Medbay power >= .Medbay level run say Increased MED power by 1

#resets if right click leads to null value
execute if score .Medbay power < .min powerusage run scoreboard players set .Medbay power 0

# end stage calculation and reset
advancement revoke @s only ftl:incrementers/power/medpowinc_clicked
function ftl:scoreboard/calcusage