# if right clicked while (system power is not 0 AND crouched), decreases power for system
$execute if predicate ftl:is_crouching unless score $(key1) power < .min powerusage run scoreboard players remove $(key1) power 1 
$execute if predicate ftl:is_crouching unless score $(key1) power < .min powerusage run say Decreased $(key2) power by 1

# if right clicked while (powerusage is UNDER reactor cap AND power is UNDER level cap AND uncrouched), increases power for system
$execute unless predicate ftl:is_crouching unless score .total powerusage >= .Reactor level unless score $(key1) power >= $(key1) eflevel run say Increased $(key2) power by 1
$execute unless predicate ftl:is_crouching unless score .total powerusage >= .Reactor level unless score $(key1) power >= $(key1) eflevel run scoreboard players add $(key1) power 1


#resets if right click leads to null value
$execute if score $(key1) power < .min powerusage run scoreboard players set $(key1) power 0

# end stage reset
function ftl:scoreboard/calcusage

#Key 1 is the target system and key 2 is the the shorthand name