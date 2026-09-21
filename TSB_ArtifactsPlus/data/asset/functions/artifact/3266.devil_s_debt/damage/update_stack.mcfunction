#> asset:artifact/3266.devil_s_debt/damage/update_stack
#
#
#
# @within function asset:artifact/3266.devil_s_debt/damage/3.main

# 11以上チャージされてるなら、11に抑える
    execute if score @s 1B3.Charge matches 12.. run scoreboard players set @s 1B3.Charge 11

# スタック更新とそれの演出
    execute if score @s 1B3.Charge matches 1 run data modify storage api: Argument.Stack set value 1
    execute if score @s 1B3.Charge matches 1 run playsound block.beacon.activate player @a ~ ~ ~ 1 1.2

    execute if score @s 1B3.Charge matches 2 run data modify storage api: Argument.Stack set value 2
    execute if score @s 1B3.Charge matches 2 run playsound block.beacon.activate player @a ~ ~ ~ 1 1.3

    execute if score @s 1B3.Charge matches 3 run data modify storage api: Argument.Stack set value 3
    execute if score @s 1B3.Charge matches 3 run playsound block.beacon.activate player @a ~ ~ ~ 1 1.4

    execute if score @s 1B3.Charge matches 4 run data modify storage api: Argument.Stack set value 4
    execute if score @s 1B3.Charge matches 4 run playsound block.beacon.activate player @a ~ ~ ~ 1 1.5

    execute if score @s 1B3.Charge matches 5 run data modify storage api: Argument.Stack set value 5
    execute if score @s 1B3.Charge matches 5 run playsound block.beacon.activate player @a ~ ~ ~ 1 1.6

    execute if score @s 1B3.Charge matches 6 run data modify storage api: Argument.Stack set value 6
    execute if score @s 1B3.Charge matches 6 run playsound block.beacon.activate player @a ~ ~ ~ 1 1.8

    execute if score @s 1B3.Charge matches 7 run data modify storage api: Argument.Stack set value 7
    execute if score @s 1B3.Charge matches 7 run playsound block.beacon.activate player @a ~ ~ ~ 1 1.9

    execute if score @s 1B3.Charge matches 8 run data modify storage api: Argument.Stack set value 8
    execute if score @s 1B3.Charge matches 8 run playsound block.beacon.activate player @a ~ ~ ~ 1 2.0

    execute if score @s 1B3.Charge matches 9 run data modify storage api: Argument.Stack set value 9
    execute if score @s 1B3.Charge matches 9 run playsound block.beacon.activate player @a ~ ~ ~ 1 2.0

    execute if score @s 1B3.Charge matches 10.. run data modify storage api: Argument.Stack set value 10
    execute if score @s 1B3.Charge matches 10 run playsound block.beacon.activate player @a ~ ~ ~ 1 2.0
    execute if score @s 1B3.Charge matches 10 run playsound item.trident.thunder player @a ~ ~ ~ 1 0.5
    execute if score @s 1B3.Charge matches 10 run particle minecraft:flame ~ ~1 ~ 0.4 1.0 0.4 0 20
    execute if score @s 1B3.Charge matches 10 run particle minecraft:flame ~ ~1 ~ 0.4 1.0 0.4 0 20

# チャージ用エフェクトを付与
    data modify storage api: Argument.ID set value 4228
    function api:entity/mob/effect/give

# スタックが10なら強制的に対価発動
    execute if score @s 1B3.Charge matches 10.. run function asset:artifact/3266.devil_s_debt/trigger/dis_equip/repayment
