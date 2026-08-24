execute if predicate ftl:is_crouching run scoreboard players remove .Weapons power 1
execute unless predicate ftl:is_crouching run scoreboard players add .Weapons power 1
advancement revoke @s only ftl:incrementer_clicked
