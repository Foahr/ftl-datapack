$scoreboard players set $(key1) eflevel 0 
$scoreboard players operation $(key1) eflevel += $(key1) level
$scoreboard players operation $(key1) eflevel -= $(key1) damage
$execute if score $(key1) power > $(key1) eflevel run scoreboard players operation $(key1) power = $(key1) eflevel