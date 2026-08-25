# if right clicked while (system power is not 0 AND crouched), decreases power for system
execute if predicate ftl:is_crouching unless score .Shields power < .min powerusage run scoreboard players remove .Shields power 1 
execute if predicate ftl:is_crouching unless score .Shields power < .min powerusage run say Decreased SHD power by 1

# if right clicked while (powerusage is UNDER reactor cap AND power is UNDER level cap AND uncrouched), increases power for system
execute unless predicate ftl:is_crouching unless score .total powerusage >= .Reactor level unless score .Shields power >= .Shields level run scoreboard players add .Shields power 1
execute unless predicate ftl:is_crouching unless score .total powerusage >= .Reactor level unless score .Shields power >= .Shields level run say Increased SHD power by 1

#resets if right click leads to null value
execute if score .Shields power < .min powerusage run scoreboard players set .Shields power 0

# end stage calculation and reset
advancement revoke @s only ftl:incrementers/power/shdpowinc_clicked
function ftl:scoreboard/calcusage