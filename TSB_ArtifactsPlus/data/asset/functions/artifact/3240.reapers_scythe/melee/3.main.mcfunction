#> asset:artifact/3240.reapers_scythe/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3240.reapers_scythe/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $Random

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 時間の取得
    execute store result score $LastUse Temporary run time query gametime
    scoreboard players operation $LastUse Temporary -= @s 1BD.LatestUseTick
# コンボカウントのリセット
    execute if score @s 1BD.Combo matches 3.. run scoreboard players reset @s 1BD.Combo
    execute unless score $LastUse Temporary matches ..30 run scoreboard players reset @s 1BD.Combo
# 使用タイムの記録
    execute store result score @s 1BD.LatestUseTick run time query gametime


# コンボカウント加算
    scoreboard players add @s 1BD.Combo 1

# ダメージ
    data modify storage api: Argument.Damage set value 10
    
# エフェクトが付いてるならダメージ増加
    data modify storage api: Argument.ID set value 4218
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run data modify storage api: Argument.Damage set value 1300

# 属性を指定してダメージ
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function api:damage/
    function api:damage/reset

# エフェクトがついているなら演出
    execute if data storage api: Return.Effect run function asset:artifact/3240.reapers_scythe/melee/vfx