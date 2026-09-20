#> asset:artifact/3219.axe_of_frenzy/damage/update_stack
#
#
#
# @within function asset:artifact/3219.axe_of_frenzy/damage/3.main

# 21以上チャージされてるなら、21に抑える
    execute if score @s 1A0.Charge matches 22.. run scoreboard players set @s 1A0.Charge 21

# スタック更新とそれの演出
    execute if score @s 1A0.Charge matches 1 run data modify storage api: Argument.Stack set value 1
    execute if score @s 1A0.Charge matches 1 run playsound block.beacon.activate player @a ~ ~ ~ 1 1.2

    execute if score @s 1A0.Charge matches 2 run data modify storage api: Argument.Stack set value 2
    execute if score @s 1A0.Charge matches 2 run playsound block.beacon.activate player @a ~ ~ ~ 1 1.3

    execute if score @s 1A0.Charge matches 3 run data modify storage api: Argument.Stack set value 3
    execute if score @s 1A0.Charge matches 3 run playsound block.beacon.activate player @a ~ ~ ~ 1 1.4

    execute if score @s 1A0.Charge matches 4 run data modify storage api: Argument.Stack set value 4
    execute if score @s 1A0.Charge matches 4 run playsound block.beacon.activate player @a ~ ~ ~ 1 1.5

    execute if score @s 1A0.Charge matches 5 run data modify storage api: Argument.Stack set value 5
    execute if score @s 1A0.Charge matches 5 run playsound block.beacon.activate player @a ~ ~ ~ 1 1.6

    execute if score @s 1A0.Charge matches 6 run data modify storage api: Argument.Stack set value 6
    execute if score @s 1A0.Charge matches 6 run playsound block.beacon.activate player @a ~ ~ ~ 1 1.8

    execute if score @s 1A0.Charge matches 7 run data modify storage api: Argument.Stack set value 7
    execute if score @s 1A0.Charge matches 7 run playsound block.beacon.activate player @a ~ ~ ~ 1 1.9

    execute if score @s 1A0.Charge matches 8 run data modify storage api: Argument.Stack set value 8
    execute if score @s 1A0.Charge matches 8 run playsound block.beacon.activate player @a ~ ~ ~ 1 2.0

    execute if score @s 1A0.Charge matches 9 run data modify storage api: Argument.Stack set value 9
    execute if score @s 1A0.Charge matches 9 run playsound block.beacon.activate player @a ~ ~ ~ 1 2.0

    execute if score @s 1A0.Charge matches 10 run data modify storage api: Argument.Stack set value 10
    execute if score @s 1A0.Charge matches 10 run playsound block.beacon.activate player @a ~ ~ ~ 1 2.0
    execute if score @s 1A0.Charge matches 10 run playsound item.trident.thunder player @a ~ ~ ~ 1 0.5
    execute if score @s 1A0.Charge matches 10 run particle minecraft:flame ~ ~1 ~ 0.4 1.0 0.4 0 20
    execute if score @s 1A0.Charge matches 10 run particle minecraft:flame ~ ~1 ~ 0.4 1.0 0.4 0 20

    execute if score @s 1A0.Charge matches 11 run data modify storage api: Argument.Stack set value 11
    execute if score @s 1A0.Charge matches 11 run playsound block.beacon.activate player @a ~ ~ ~ 1 2.0

    execute if score @s 1A0.Charge matches 12 run data modify storage api: Argument.Stack set value 12
    execute if score @s 1A0.Charge matches 12 run playsound block.beacon.activate player @a ~ ~ ~ 1 2.0

    execute if score @s 1A0.Charge matches 13 run data modify storage api: Argument.Stack set value 13
    execute if score @s 1A0.Charge matches 13 run playsound block.beacon.activate player @a ~ ~ ~ 1 2.0

    execute if score @s 1A0.Charge matches 14 run data modify storage api: Argument.Stack set value 14
    execute if score @s 1A0.Charge matches 14 run playsound block.beacon.activate player @a ~ ~ ~ 1 2.0

    execute if score @s 1A0.Charge matches 15 run data modify storage api: Argument.Stack set value 15
    execute if score @s 1A0.Charge matches 15 run playsound block.beacon.activate player @a ~ ~ ~ 1 2.0

    execute if score @s 1A0.Charge matches 16 run data modify storage api: Argument.Stack set value 16
    execute if score @s 1A0.Charge matches 16 run playsound block.beacon.activate player @a ~ ~ ~ 1 2.0

    execute if score @s 1A0.Charge matches 17 run data modify storage api: Argument.Stack set value 17
    execute if score @s 1A0.Charge matches 17 run playsound block.beacon.activate player @a ~ ~ ~ 1 2.0

    execute if score @s 1A0.Charge matches 18 run data modify storage api: Argument.Stack set value 18
    execute if score @s 1A0.Charge matches 18 run playsound block.beacon.activate player @a ~ ~ ~ 1 2.0

    execute if score @s 1A0.Charge matches 19 run data modify storage api: Argument.Stack set value 19
    execute if score @s 1A0.Charge matches 19 run playsound block.beacon.activate player @a ~ ~ ~ 1 2.0

    execute if score @s 1A0.Charge matches 20.. run data modify storage api: Argument.Stack set value 20
    execute if score @s 1A0.Charge matches 20 run playsound block.beacon.activate player @a ~ ~ ~ 1 2.0
    execute if score @s 1A0.Charge matches 20 run playsound item.trident.thunder player @a ~ ~ ~ 1 0.5
    execute if score @s 1A0.Charge matches 20 run playsound entity.elder_guardian.curse player @a ~ ~ ~ 2 1.0
    execute if score @s 1A0.Charge matches 20 run particle minecraft:soul_fire_flame ~ ~1 ~ 0.4 1.0 0.4 0 20
    execute if score @s 1A0.Charge matches 20 run particle minecraft:soul_fire_flame ~ ~1 ~ 0.4 1.0 0.4 0 20
    
# チャージ用エフェクトを付与
    data modify storage api: Argument.ID set value 4208
    function api:entity/mob/effect/give
