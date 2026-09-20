#> asset:artifact/3219.axe_of_frenzy/melee/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3219.axe_of_frenzy/melee/2.check_condition

#> Private
# @private
    #declare score_holder $Random

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare score_holder $1A0.Stack

# チャージバフ取得
    data modify storage api: Argument.ID set value 4208
    function api:entity/mob/effect/get/from_id

# スタックをスコアへ
    execute store result score $1A0.Stack Temporary run data get storage api: Return.Effect.Stack

# 効果音
    execute unless score $1A0.Stack Temporary matches 0 run playsound item.totem.use player @a ~ ~ ~ 1 1.0

# スタック毎のダメージ設定
    execute if score $1A0.Stack Temporary matches 0 run data modify storage api: Argument.Damage set value 800
    execute if score $1A0.Stack Temporary matches 1 run data modify storage api: Argument.Damage set value 980
    execute if score $1A0.Stack Temporary matches 2 run data modify storage api: Argument.Damage set value 1160
    execute if score $1A0.Stack Temporary matches 3 run data modify storage api: Argument.Damage set value 1340
    execute if score $1A0.Stack Temporary matches 4 run data modify storage api: Argument.Damage set value 1520
    execute if score $1A0.Stack Temporary matches 5 run data modify storage api: Argument.Damage set value 1700
    execute if score $1A0.Stack Temporary matches 6 run data modify storage api: Argument.Damage set value 1880
    execute if score $1A0.Stack Temporary matches 7 run data modify storage api: Argument.Damage set value 2060
    execute if score $1A0.Stack Temporary matches 8 run data modify storage api: Argument.Damage set value 2240
    execute if score $1A0.Stack Temporary matches 9 run data modify storage api: Argument.Damage set value 2420
    execute if score $1A0.Stack Temporary matches 10 run data modify storage api: Argument.Damage set value 2600
    execute if score $1A0.Stack Temporary matches 11 run data modify storage api: Argument.Damage set value 2780
    execute if score $1A0.Stack Temporary matches 12 run data modify storage api: Argument.Damage set value 2960
    execute if score $1A0.Stack Temporary matches 13 run data modify storage api: Argument.Damage set value 3140
    execute if score $1A0.Stack Temporary matches 14 run data modify storage api: Argument.Damage set value 3320
    execute if score $1A0.Stack Temporary matches 15 run data modify storage api: Argument.Damage set value 3500
    execute if score $1A0.Stack Temporary matches 16 run data modify storage api: Argument.Damage set value 3680
    execute if score $1A0.Stack Temporary matches 17 run data modify storage api: Argument.Damage set value 3860
    execute if score $1A0.Stack Temporary matches 18 run data modify storage api: Argument.Damage set value 4040
    execute if score $1A0.Stack Temporary matches 19 run data modify storage api: Argument.Damage set value 4220
    execute if score $1A0.Stack Temporary matches 20 run data modify storage api: Argument.Damage set value 4400

# 敵エフェクト
    execute unless score $1A0.Stack Temporary matches 0 at @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..10] run particle minecraft:flame ~ ~1 ~ 0.4 1.0 0.4 1 20 force @a[distance=..30]

# ダメージ
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..10] run function api:damage/
    function api:damage/reset

# バフ解除
    data modify storage api: Argument.ID set value 4208
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $1A0.Stack Temporary
    scoreboard players reset @s 1A0.Charge