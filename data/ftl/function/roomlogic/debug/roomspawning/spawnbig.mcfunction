$summon marker ~ ~ ~ {Tags:[master, room.$(id), ship.$(ship)]}

#isunit tag is used to check only markers that are squares
$summon marker ~-1 ~ ~-1 {Tags:[isunit, square.1, room.$(id), ship.$(ship)]}
$summon marker ~-7 ~ ~-1 {Tags:[isunit, square.2, room.$(id), ship.$(ship)]}
$summon marker ~-1 ~ ~-7 {Tags:[isunit, square.3, room.$(id), ship.$(ship)]}
$summon marker ~-7 ~ ~-7 {Tags:[isunit, square.4, room.$(id), ship.$(ship)]}

$execute as @e[type=marker, tag=room.$(id), tag=ship.$(ship), tag=master] run scoreboard players set @s oxycount 100
$execute as @e[type=marker, tag=room.$(id), tag=ship.$(ship), tag=!master] run scoreboard players set @s isBreach 0
$execute as @e[type=marker, tag=room.$(id), tag=ship.$(ship), tag=!master] run scoreboard players set @s isFire 0