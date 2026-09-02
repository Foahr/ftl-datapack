$execute as @e[type=minecraft:marker, tag=ship.$(ship), tag=room.$(room), tag=square.$(square), tag=!parent] run scoreboard players set @s isBreach 0
function ftl:roomlogic/status/calcstatus