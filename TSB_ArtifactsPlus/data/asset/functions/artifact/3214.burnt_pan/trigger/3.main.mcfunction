#> asset:artifact/3214.burnt_pan/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3214.burnt_pan/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $Random
    #declare score_holder $HealthPer

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 効果音など
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run particle minecraft:lava ~ ~1 ~ 0.2 1 0.2 0.5 5
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run particle minecraft:flame ~ ~1 ~ 0.2 1 0.2 0 15
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run playsound entity.generic.burn neutral @a ~ ~ ~ 0.5 1

# ダメージ
    data modify storage api: Argument.Damage set value 540
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function api:damage/
    function api:damage/reset

# 確率で回復
    function api:entity/player/get_health_per
    execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 100

    execute unless score $HealthPer Temporary matches ..50 run execute if predicate lib:random_pass_per/50 run function asset:artifact/3214.burnt_pan/trigger/recovery
    execute if score $HealthPer Temporary matches ..50 run execute if predicate lib:random_pass_per/75 run function asset:artifact/3214.burnt_pan/trigger/recovery

    execute unless score $HealthPer Temporary matches ..50 run say 50per
    execute if score $HealthPer Temporary matches ..50 run say 75per
