scoreboard objectives add power dummy

#setting up power for all systems
scoreboard players add .Weapons power 0
scoreboard players add .Shields power 0
scoreboard players add .Engines power 0
scoreboard players add .Oxygen power 0
scoreboard players add .Medbay power 0

#subsystems
#scoreboard players add .Piloting power 0
#scoreboard players add .Doors power 0
#scoreboard players add .Cameras power 0

#setting up the power cap
scoreboard objectives add powercap dummy

scoreboard players add .Reactor powercap 9 

#setting up total power usage
scoreboard objectives add powerusage dummy
scoreboard players add .total powerusage 0

#setting up displays
scoreboard objectives setdisplay sidebar power 
scoreboard objectives setdisplay sidebar powerusage
scoreboard objectives setdisplay sidebar powercap 