# 演出
    execute rotated ~ 0 positioned ^ ^1 ^2 run particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0 5
    playsound entity.wind_charge.wind_burst player @a ~ ~ ~ 2 1
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 1.7

# 前方4mの敵にTag付与
    execute positioned ^ ^ ^1 run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..4] add 1BC.Hit
    execute as @e[type=#lib:living,type=!player,tag=1BC.Hit,tag=!Uninterferable,distance=..4] positioned ^ ^ ^-100 run tag @s[type=#lib:living,type=!player,tag=1BC.Hit,tag=!Uninterferable,distance=..100] remove 1BC.Hit

# ダメージ
    data modify storage api: Argument.Damage set value 180
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=1BC.Hit,distance=..10] run function api:damage/
    function api:damage/reset

# 吹き飛ばし
    execute store result storage lib: Argument.VectorMagnitude double -1 run scoreboard players get @s 1BC.Stack
    data modify storage lib: Argument.KnockbackResist set value true
    execute as @e[type=#lib:living,type=!player,tag=1BC.Hit,tag=!Uninterferable,distance=..10] at @s facing entity @p[tag=this] feet rotated ~ ~5 run function lib:motion/
    data remove storage lib: ArgumenC

# エフェクトの削除
    data modify storage api: Argument.ID set value 4229
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# スタック用スコアボードのリセット
    scoreboard players set @s 1BC.Stack 0