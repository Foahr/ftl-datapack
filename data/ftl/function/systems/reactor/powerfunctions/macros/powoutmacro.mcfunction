# decreases system power UNLESS system power is equal to 0
$execute unless score $(key1) power <= .min powerusage run say Decreased $(key2) power by 1
$execute unless score $(key1) power <= .min powerusage run scoreboard players remove $(key1) power 1 


#resets if right click leads to null value
$execute if score $(key1) power < .min powerusage run scoreboard players set $(key1) power 0

# end stage reset
function ftl:scoreboard/calcusage

#Key 1 is the target system and key 2 is the the shorthand name