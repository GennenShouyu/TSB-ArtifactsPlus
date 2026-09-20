# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living,tag=3214.hit,tag=!Uninterferable,distance=..10] run function api:damage/
    function api:damage/reset

# 効果音
    execute at @e[tag=3214.hit,tag=!Enemy.Boss] run particle dust 0.5 0.8 1 1 ~ ~1 ~ 0.5 0.5 0.5 1 10
# スタン
# 天使に対しては効果が落ちる
    effect give @e[tag=3214.hit,tag=!Enemy.Boss] slowness 3 5 true
    effect give @e[tag=3214.hit,tag=Enemy.Boss] slowness 2 3 true

# リセット
    scoreboard players reset $UserID Temporary
    tag @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..10] remove 3214.hit

# 消滅
    execute on vehicle run kill @s
    kill @s