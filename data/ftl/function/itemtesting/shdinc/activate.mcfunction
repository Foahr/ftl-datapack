execute if predicate ftl:is_crouching run scoreboard players remove .Shields power 1 
execute if predicate ftl:is_crouching run say Decreased SHD power by 1

execute unless predicate ftl:is_crouching run scoreboard players add .Shields power 1
execute unless predicate ftl:is_crouching run say Increased SHD power by 1

advancement revoke @s only ftl:incrementers/shdinc_clicked
function ftl:scoreboard/calcusage