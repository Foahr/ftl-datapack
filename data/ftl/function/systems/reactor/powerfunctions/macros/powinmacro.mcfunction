# increases power to target system UNLESS powerusage is = to reactor level OR system power is equal to effective level
$execute unless score .total powerusage >= .Reactor level unless score $(key1) power >= $(key1) eflevel run say Increased $(key2) power by 1
$execute unless score .total powerusage >= .Reactor level unless score $(key1) power >= $(key1) eflevel run scoreboard players add $(key1) power 1

#resets if right click leads to null value
$execute if score $(key1) power < .min powerusage run scoreboard players set $(key1) power 0

# end stage reset
function ftl:scoreboard/calcusage

#Key 1 is the target system and key 2 is the the shorthand name