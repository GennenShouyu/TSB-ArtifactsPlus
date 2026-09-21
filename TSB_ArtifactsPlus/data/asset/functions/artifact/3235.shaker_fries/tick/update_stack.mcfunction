#> asset:artifact/3235.shaker_fries/tick/update_stack
#
#
#
# @within function asset:artifact/3235.shaker_fries/tick/3.main

# エフェクト
    playsound block.sand.break player @a ~ ~ ~ 1 1 0
    playsound block.sand.break player @a ~ ~ ~ 1 0.5

# 6以上チャージされてるなら、6に抑える
    execute if score @s 1A9.Charge matches 6.. run scoreboard players set @s 1A9.Charge 6

# スタック更新とそれの演出
    execute if score @s 1A9.Charge matches 1 run data modify storage api: Argument.Stack set value 1
    execute if score @s 1A9.Charge matches 2 run data modify storage api: Argument.Stack set value 2
    execute if score @s 1A9.Charge matches 3 run data modify storage api: Argument.Stack set value 3
    execute if score @s 1A9.Charge matches 4 run data modify storage api: Argument.Stack set value 4
    execute if score @s 1A9.Charge matches 5 run function asset:artifact/3235.shaker_fries/tick/vfx
    execute if score @s 1A9.Charge matches 5.. run data modify storage api: Argument.Stack set value 5
    
# チャージ用エフェクトを付与
    data modify storage api: Argument.ID set value 4216
    function api:entity/mob/effect/give
