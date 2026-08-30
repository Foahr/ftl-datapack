effect give @e[type=player] glowing 1 1 true

execute if score .total powerusage > .Reactor level run say as @e[type=marker] power too much
