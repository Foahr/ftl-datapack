$summon marker ~ ~ ~ {Tags:[master, room.$(id), ship.$(ship)]}

$summon marker ~-1 ~ ~-1 {Tags:[isunit, square.1, room.$(id), ship.$(ship)]}
$summon marker ~-7 ~ ~-1 {Tags:[isunit, square.2, room.$(id), ship.$(ship)]}

$execute as @e[type=marker, tag=room.$(id), tag=ship.$(ship), tag=parent] run function ftl:roomlogic/debug/roomspawning/parentsetup
$execute as @e[type=marker, tag=room.$(id), tag=ship.$(ship), tag=!parent] run function ftl:roomlogic/debug/roomspawning/childsetup