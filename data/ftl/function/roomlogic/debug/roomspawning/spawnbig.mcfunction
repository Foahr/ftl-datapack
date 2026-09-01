$summon marker ~ ~ ~ {Tags:[parent, room.$(id), ship.$(ship)]}

#child tag is used to check only markers that are squares
$summon marker ~-1 ~ ~-1 {Tags:[child, square.1, room.$(id), ship.$(ship)]}
$summon marker ~-7 ~ ~-1 {Tags:[child, square.2, room.$(id), ship.$(ship)]}
$summon marker ~-1 ~ ~-7 {Tags:[child, square.3, room.$(id), ship.$(ship)]}
$summon marker ~-7 ~ ~-7 {Tags:[child, square.4, room.$(id), ship.$(ship)]}

$execute as @e[type=marker, tag=room.$(id), tag=ship.$(ship), tag=parent] run function ftl:roomlogic/debug/roomspawning/parentsetup
$execute as @e[type=marker, tag=room.$(id), tag=ship.$(ship), tag=!parent] run function ftl:roomlogic/debug/roomspawning/childsetup