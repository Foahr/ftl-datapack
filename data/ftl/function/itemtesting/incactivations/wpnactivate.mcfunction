# if right clicked while (system power is not 0 AND crouched), decreases power for system
execute if predicate ftl:is_crouching unless score .Weapons power < .min powerusage run scoreboard players remove .Weapons power 1
execute if predicate ftl:is_crouching unless score .Weapons power < .min powerusage run say Decreased WPN power by 1

# if right clicked while (powerusage is UNDER reactor cap AND uncrouched), increases power for system
execute unless predicate ftl:is_crouching unless score .total powerusage >= .Reactor powercap run scoreboard players add .Weapons power 1
execute unless predicate ftl:is_crouching unless score .total powerusage >= .Reactor powercap run say Increased WPN power by 1

#resets if right click leads to null value
execute if score .Weapons power < .min powerusage run scoreboard players set .Weapons power 0

# end stage calculation and reset
advancement revoke @s only ftl:incrementers/wpninc_clicked
function ftl:scoreboard/calcusage