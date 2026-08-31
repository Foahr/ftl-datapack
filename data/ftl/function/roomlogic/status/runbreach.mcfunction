$execute as @e[type=minecraft:marker, tag=ship.$(ship), tag=room.$(room), tag=square.$(square), tag=!master] run scoreboard players set @s isBreach 20
function ftl:roomlogic/status/calcstatus