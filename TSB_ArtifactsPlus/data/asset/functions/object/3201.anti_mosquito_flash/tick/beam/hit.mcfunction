#> asset:object/3201.anti_mosquito_flash/tick/beam/hit
#
#
#
# @within function asset:object/3201.anti_mosquito_flash/tick/beam/recursive

#> Private
# @private
    #declare score_holder $UserID
    #declare score_holder $Element

# 演出
    execute at @e[type=#lib:living_without_player,tag=LandingTarget,distance=..30,limit=1] run playsound minecraft:block.respawn_anchor.deplete neutral @a ~ ~ ~ 1 2
    execute at @e[type=#lib:living_without_player,tag=LandingTarget,distance=..30,limit=1] run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force @a[distance=..30]


# ダメージ
    data modify storage api: Argument.Damage set value 70
# 空中にいる敵ならダメージ増加
    execute at @e[type=#lib:living_without_player,tag=LandingTarget,distance=..30,limit=1] if block ~ ~-1 ~ air run data modify storage api: Argument.Damage set value 120
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=LandingTarget,distance=..30,limit=1] run function api:damage/
    function api:damage/reset

# 着弾タグを消す
    tag @e[type=#lib:living_without_player,tag=LandingTarget,distance=..30,limit=1] remove LandingTarget

# リセット
    scoreboard players reset $UserID Temporary
    scoreboard players reset $Element Temporary
