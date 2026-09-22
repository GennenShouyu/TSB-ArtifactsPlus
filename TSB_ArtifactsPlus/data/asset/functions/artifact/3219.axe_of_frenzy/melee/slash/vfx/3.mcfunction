execute unless score $1A0.Stack Temporary matches 0 at @e[type=#lib:living,type=!player,tag=!Uninterferable,tag=1A0.Target] run particle minecraft:explosion ~ ~1 ~ 0.2 0.5 0.2 0 1
execute unless score $1A0.Stack Temporary matches 0 at @e[type=#lib:living,type=!player,tag=!Uninterferable,tag=1A0.Target] run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.2 1.0

execute unless score $1A0.Stack Temporary matches 0 at @e[type=#lib:living,type=!player,tag=!Uninterferable,tag=1A0.Target] run particle minecraft:flame ~ ~1 ~ 0.4 1.0 0.4 1 20 force @a[distance=..30]
execute unless score $1A0.Stack Temporary matches 0 at @e[type=#lib:living,type=!player,tag=!Uninterferable,tag=1A0.Target] run particle minecraft:lava ~ ~1 ~ 0.4 1.0 0.4 1 20 force @a[distance=..30]