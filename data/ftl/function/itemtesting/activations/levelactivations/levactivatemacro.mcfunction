# if right clicked while (system level is not 0 AND crouched), decreases system level
$execute if predicate ftl:is_crouching unless score $(key1) level < .min powerusage run scoreboard players remove $(key1) level 1 
$execute if predicate ftl:is_crouching unless score $(key1) level < .min powerusage run say Decreased $(key2) level by 1

# if right clicked while standing, increase system level
$execute unless predicate ftl:is_crouching run say Increased $(key2) level by 1
$execute unless predicate ftl:is_crouching run scoreboard players add $(key1) level 1

#resets if right click leads to null value
$execute if score $(key1) level < .min powerusage run scoreboard players set $(key1) level 0

# end stage calculation and reset
function ftl:scoreboard/calcusage

#Key 1 is the target system and key 2 is the the shorthand name