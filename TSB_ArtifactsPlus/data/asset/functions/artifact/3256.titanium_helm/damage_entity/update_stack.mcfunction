    effect give @s minecraft:hunger 20 10 true
    
    scoreboard players add @s 1B7.Stack 1

# 5以上チャージされてるなら、5に抑える
    execute if score @s 1B7.Stack matches 5.. run scoreboard players set @s 1B7.Stack 5

# スタック更新とそれの演出
    execute if score @s 1B7.Stack matches 1 run data modify storage api: Argument.Stack set value 1
    execute if score @s 1B7.Stack matches 2 run data modify storage api: Argument.Stack set value 2
    execute if score @s 1B7.Stack matches 3 run data modify storage api: Argument.Stack set value 3
    execute if score @s 1B7.Stack matches 4.. run data modify storage api: Argument.Stack set value 4
    
# バフを付与
    data modify storage api: Argument.ID set value 4231
    function api:entity/mob/effect/give