#> asset:object/3203.thunder_bullet/tick/beam/hit
#
#
#
# @within function asset:object/3203.thunder_bullet/tick/beam/recursive

#> Private
# @private
    #declare score_holder $UserID

# 演出
    execute at @e[type=#lib:living_without_player,tag=LandingTarget,distance=..30,limit=1] run particle dust 10000000000 10000000000 1 1 ~ ~1 ~ 0.3 0.5 0.3 0.01 20 force @a[distance=..30]

# ダメージ
    data modify storage api: Argument.Damage set value 120
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=LandingTarget,distance=..30,limit=1] run function api:damage/
    function api:damage/reset

# 着弾タグを消す
    tag @e[type=#lib:living_without_player,tag=LandingTarget,distance=..30,limit=1] remove LandingTarget

# リセット
    scoreboard players reset $UserID Temporary
