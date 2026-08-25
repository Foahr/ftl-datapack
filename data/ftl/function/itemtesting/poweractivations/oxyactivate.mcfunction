# if right clicked while (system power is not 0 AND crouched), decreases power for system
execute if predicate ftl:is_crouching unless score .Oxygen power < .min powerusage run scoreboard players remove .Oxygen power 1 
execute if predicate ftl:is_crouching unless score .Oxygen power < .min powerusage run say Decreased OXY power by 1

# if right clicked while (powerusage is UNDER reactor cap AND power is UNDER level cap AND uncrouched), increases power for system
execute unless predicate ftl:is_crouching unless score .total powerusage >= .Reactor level unless score .Oxygen power >= .Oxygen level run scoreboard players add .Oxygen power 1
execute unless predicate ftl:is_crouching unless score .total powerusage >= .Reactor level unless score .Oxygen power >= .Oxygen level run say Increased OXY power by 1

#resets if right click leads to null value
execute if score .Oxygen power < .min powerusage run scoreboard players set .Oxygen power 0

# end stage calculation and reset
advancement revoke @s only ftl:incrementers/power/oxypowinc_clicked
function ftl:scoreboard/calcusage