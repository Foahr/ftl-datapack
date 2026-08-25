#clear previous objectives
scoreboard objectives remove power
scoreboard objectives remove level
scoreboard objectives remove powerusage 
scoreboard objectives remove damage
scoreboard objectives remove eflevel

#setting up scoreboards
scoreboard objectives add power dummy
scoreboard objectives add level dummy
scoreboard objectives add damage dummy
scoreboard objectives add powerusage dummy
scoreboard objectives add eflevel dummy

#macros
function ftl:scoreboard/macros/systemsetup {system: ".Weapons", stlevel: 4, stpower: 0}
function ftl:scoreboard/macros/systemsetup {system: ".Shields", stlevel: 4, stpower: 0}
function ftl:scoreboard/macros/systemsetup {system: ".Oxygen", stlevel: 4, stpower: 0}
function ftl:scoreboard/macros/systemsetup {system: ".Medbay", stlevel: 4, stpower: 0}
function ftl:scoreboard/macros/systemsetup {system: ".Engines", stlevel: 4, stpower: 0}

scoreboard players add .Reactor level 8

scoreboard players add .total powerusage 0
scoreboard players add .min powerusage 0

#setting up displays
scoreboard objectives setdisplay sidebar power 
scoreboard objectives setdisplay sidebar powerusage
scoreboard objectives setdisplay sidebar level
scoreboard objectives setdisplay sidebar damage
scoreboard objectives setdisplay sidebar eflevel
execute run function ftl:scoreboard/calcusage