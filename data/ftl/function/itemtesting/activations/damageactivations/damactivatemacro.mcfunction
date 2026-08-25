# if right clicked while (system damage is not 0 AND crouched), decreases damage for system
$execute if predicate ftl:is_crouching unless score $(key1) damage < .min powerusage run scoreboard players remove $(key1) damage 1 
$execute if predicate ftl:is_crouching unless score $(key1) damage < .min powerusage run say healed $(key2) by 1

# if right clicked while (system damage is UNDER system level cap AND uncrouched), increases damage for system
$execute unless predicate ftl:is_crouching unless score $(key1) damage >= $(key1) level run say Damaged $(key2) by 1
$execute unless predicate ftl:is_crouching unless score $(key1) damage >= $(key1) level run scoreboard players add $(key1) damage 1

#resets if right click leads to null value
$execute if score $(key1) damage < .min powerusage run scoreboard players set $(key1) damage 0

# end stage calculation and reset
function ftl:scoreboard/calcusage

#Key 1 is the target system and key 2 is the the shorthand name