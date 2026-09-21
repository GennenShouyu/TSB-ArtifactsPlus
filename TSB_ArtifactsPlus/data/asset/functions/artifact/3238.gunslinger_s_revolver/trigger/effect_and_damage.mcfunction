#> asset:artifact/3238.gunslinger_s_revolver/using_item/update_stack
#
#
#
# @within function asset:artifact/3238.gunslinger_s_revolver/using_item/3.main
#> Private
# @private
    #declare score_holder $Damage
    #declare score_holder $1B0.Stack

# チャージを+1
    scoreboard players add @s 1B0.Charge 1

# 11以上チャージされてるなら、11に抑える
    execute if score @s 1B0.Charge matches 11.. run scoreboard players set @s 1B0.Charge 11

# スタック更新とそれの演出
    execute if score @s 1B0.Charge matches 1 run data modify storage api: Argument.Stack set value 1
    execute if score @s 1B0.Charge matches 1 run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 1.2

    execute if score @s 1B0.Charge matches 2 run data modify storage api: Argument.Stack set value 2
    execute if score @s 1B0.Charge matches 2 run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 1.3

    execute if score @s 1B0.Charge matches 3 run data modify storage api: Argument.Stack set value 3
    execute if score @s 1B0.Charge matches 3 run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 1.4

    execute if score @s 1B0.Charge matches 4 run data modify storage api: Argument.Stack set value 4
    execute if score @s 1B0.Charge matches 4 run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 1.5

    execute if score @s 1B0.Charge matches 5 run data modify storage api: Argument.Stack set value 5
    execute if score @s 1B0.Charge matches 5 run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 1.6

    execute if score @s 1B0.Charge matches 6 run data modify storage api: Argument.Stack set value 6
    execute if score @s 1B0.Charge matches 6 run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 1.8

    execute if score @s 1B0.Charge matches 7 run data modify storage api: Argument.Stack set value 7
    execute if score @s 1B0.Charge matches 7 run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 1.9

    execute if score @s 1B0.Charge matches 8 run data modify storage api: Argument.Stack set value 8
    execute if score @s 1B0.Charge matches 8 run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 2.0

    execute if score @s 1B0.Charge matches 9 run data modify storage api: Argument.Stack set value 9
    execute if score @s 1B0.Charge matches 9 run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 2.0

    execute if score @s 1B0.Charge matches 10.. run data modify storage api: Argument.Stack set value 10
    execute if score @s 1B0.Charge matches 10 run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 2.0
    execute if score @s 1B0.Charge matches 10 run playsound ogg:random.levelup player @a ~ ~ ~ 1.5 1.5
    
# チャージ用エフェクトを付与
    data modify storage api: Argument.ID set value 4217
    function api:entity/mob/effect/give
    
# スタックをスコアへ
    execute store result score $1B0.Stack Temporary run scoreboard players get @s 1B0.Charge

# スタック毎のダメージ設定
    execute if score $1B0.Stack Temporary matches 0 run data modify storage api: Argument.Damage set value 125
    execute if score $1B0.Stack Temporary matches 1 run data modify storage api: Argument.Damage set value 165
    execute if score $1B0.Stack Temporary matches 2 run data modify storage api: Argument.Damage set value 205
    execute if score $1B0.Stack Temporary matches 3 run data modify storage api: Argument.Damage set value 245
    execute if score $1B0.Stack Temporary matches 4 run data modify storage api: Argument.Damage set value 285
    execute if score $1B0.Stack Temporary matches 5 run data modify storage api: Argument.Damage set value 325
    execute if score $1B0.Stack Temporary matches 6 run data modify storage api: Argument.Damage set value 365
    execute if score $1B0.Stack Temporary matches 7 run data modify storage api: Argument.Damage set value 405
    execute if score $1B0.Stack Temporary matches 8 run data modify storage api: Argument.Damage set value 445
    execute if score $1B0.Stack Temporary matches 9 run data modify storage api: Argument.Damage set value 485
    execute if score $1B0.Stack Temporary matches 10.. run data modify storage api: Argument.Damage set value 525

# ダメージ設定
    # 属性
        data modify storage api: Argument.AttackType set value "Physical"
        data modify storage api: Argument.ElementType set value "Fire"
    # ダメージ
        function api:damage/modifier
        execute as @e[tag=LandingTarget] run function api:damage/
# リセット
    function api:damage/reset
