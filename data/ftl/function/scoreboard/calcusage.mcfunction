
scoreboard players set .total powerusage 0

#find a way to shorten using macros
function ftl:scoreboard/macros/eflevelcalc {key1: ".Engines"}
function ftl:scoreboard/macros/eflevelcalc {key1: ".Medbay"}
function ftl:scoreboard/macros/eflevelcalc {key1: ".Oxygen"}
function ftl:scoreboard/macros/eflevelcalc {key1: ".Shields"}
function ftl:scoreboard/macros/eflevelcalc {key1: ".Weapons"}

scoreboard players operation .total powerusage += .Engines power
scoreboard players operation .total powerusage += .Medbay power
scoreboard players operation .total powerusage += .Oxygen power
scoreboard players operation .total powerusage += .Shields power
scoreboard players operation .total powerusage += .Weapons power