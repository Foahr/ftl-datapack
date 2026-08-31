#clear previous objectives
scoreboard objectives remove power
scoreboard objectives remove level
scoreboard objectives remove powerusage 
scoreboard objectives remove damage
scoreboard objectives remove eflevel

scoreboard objectives remove isBreach
scoreboard objectives remove isFire
scoreboard objectives remove oxycount

#setting up scoreboards
scoreboard objectives add power dummy
scoreboard objectives add level dummy
scoreboard objectives add damage dummy
scoreboard objectives add powerusage dummy
scoreboard objectives add eflevel dummy

scoreboard objectives add isBreach dummy
scoreboard objectives add isFire dummy
scoreboard objectives add oxycount dummy

#macros setting up main systems, stlevel is starting level, stpower is starting power
function ftl:scoreboard/macros/systemsetup {system: ".Weapons", stlevel: 4, stpower: 0}
function ftl:scoreboard/macros/systemsetup {system: ".Shields", stlevel: 4, stpower: 0}
function ftl:scoreboard/macros/systemsetup {system: ".Oxygen", stlevel: 4, stpower: 0}
function ftl:scoreboard/macros/systemsetup {system: ".Medbay", stlevel: 4, stpower: 0}
function ftl:scoreboard/macros/systemsetup {system: ".Engines", stlevel: 4, stpower: 0}

#sets the power cap
scoreboard players add .Reactor level 8

#for tracking power usage, and .min gives a 0 value to check against
scoreboard players add .total powerusage 0
scoreboard players add .min powerusage 0

#just in case
execute run function ftl:scoreboard/calcusage