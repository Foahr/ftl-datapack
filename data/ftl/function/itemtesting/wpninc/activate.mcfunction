execute if predicate ftl:is_crouching run scoreboard players remove .Weapons power 1 
execute if predicate ftl:is_crouching run say Decreased WPN power by 1

execute unless predicate ftl:is_crouching run scoreboard players add .Weapons power 1
execute unless predicate ftl:is_crouching run say Increased WPN power by 1

advancement revoke @s only ftl:incrementers/wpninc_clicked
function ftl:scoreboard/calcusage