# if right clicked while (system power is not 0 AND crouched), decreases power for system
execute if predicate ftl:is_crouching unless score .Engines power < .min powerusage run scoreboard players remove .Engines power 1 
execute if predicate ftl:is_crouching unless score .Engines power < .min powerusage run say Decreased ENG power by 1

# if right clicked while (powerusage is UNDER reactor cap AND power is UNDER level cap AND uncrouched), increases power for system
execute unless predicate ftl:is_crouching unless score .total powerusage >= .Reactor level unless score .Engines power >= .Engines level run scoreboard players add .Engines power 1
execute unless predicate ftl:is_crouching unless score .total powerusage >= .Reactor level unless score .Engines power >= .Engines level run say Increased ENG power by 1

#resets if right click leads to null value
execute if score .Engines power < .min powerusage run scoreboard players set .Engines power 0

# end stage calculation and reset
advancement revoke @s only ftl:incrementers/power/engpowinc_clicked
function ftl:scoreboard/calcusage