#> Private
# @private
    #declare score_holder $1A0.Stack
    
# チャージバフ取得
    data modify storage api: Argument.ID set value 4208
    function api:entity/mob/effect/get/from_id

# スタックをスコアへ
    execute store result score $1A0.Stack Temporary run data get storage api: Return.Effect.Stack

execute unless score $1A0.Stack Temporary matches 0 at @e[type=#lib:living,type=!player,tag=!Uninterferable,tag=1A0.Target] run playsound item.totem.use player @a ~ ~ ~ 1 1.0
execute unless score $1A0.Stack Temporary matches 0 at @e[type=#lib:living,type=!player,tag=!Uninterferable,tag=1A0.Target] run particle minecraft:flame ~ ~1 ~ 0.4 1.0 0.4 1 20 force @a[distance=..30]
execute unless score $1A0.Stack Temporary matches 0 at @e[type=#lib:living,type=!player,tag=!Uninterferable,tag=1A0.Target] run particle minecraft:lava ~ ~1 ~ 0.4 1.0 0.4 1 20 force @a[distance=..30]

execute unless score $1A0.Stack Temporary matches 0 at @e[type=#lib:living,type=!player,tag=!Uninterferable,tag=1A0.Target] positioned ~ ~2 ~ run function asset:artifact/3219.axe_of_frenzy/melee/slash/vfx/4