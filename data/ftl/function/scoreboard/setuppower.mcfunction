#clear previous objectives
scoreboard objectives remove power
scoreboard objectives remove level
scoreboard objectives remove powerusage 


#setting up power for all systems
scoreboard objectives add power dummy

scoreboard players add .Weapons power 0
scoreboard players add .Shields power 0
scoreboard players add .Engines power 0
scoreboard players add .Oxygen power 0
scoreboard players add .Medbay power 0

#subsystems
#scoreboard players add .Piloting power 0
#scoreboard players add .Doors power 0
#scoreboard players add .Cameras power 0


#setting up the system levels. reactor level acts as a power usage cap
scoreboard objectives add level dummy

scoreboard players add .Reactor level 8

scoreboard players add .Weapons level 3
scoreboard players add .Shields level 2
scoreboard players add .Engines level 2
scoreboard players add .Oxygen level 1
scoreboard players add .Medbay level 1

#setting up total power usage
scoreboard objectives add powerusage dummy

scoreboard players add .total powerusage 0
scoreboard players add .min powerusage 0

#setting up displays
scoreboard objectives setdisplay sidebar power 
scoreboard objectives setdisplay sidebar powerusage
scoreboard objectives setdisplay sidebar level

execute run function ftl:scoreboard/calcusage