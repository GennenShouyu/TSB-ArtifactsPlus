#> asset:artifact/3267.chill_gale_knife/kill/2.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3267.chill_gale_knife/kill/1.trigger

# ここから先は神器側の効果の処理を書く

# チャージを+1
    scoreboard players add @s 1BC.Stack 1

# 効果音
    playsound block.beacon.activate player @a ~ ~ ~ 1 1.5

# 11以上チャージされてるなら、11に抑える
    execute if score @s 1BC.Stack matches 12.. run scoreboard players set @s 1BC.Stack 11

# スタック更新とそれの演出
    execute if score @s 1BC.Stack matches 1 run data modify storage api: Argument.Stack set value 1
    execute if score @s 1BC.Stack matches 2 run data modify storage api: Argument.Stack set value 2
    execute if score @s 1BC.Stack matches 3 run data modify storage api: Argument.Stack set value 3
    execute if score @s 1BC.Stack matches 4 run data modify storage api: Argument.Stack set value 4
    execute if score @s 1BC.Stack matches 5 run data modify storage api: Argument.Stack set value 5
    execute if score @s 1BC.Stack matches 6 run data modify storage api: Argument.Stack set value 6
    execute if score @s 1BC.Stack matches 7 run data modify storage api: Argument.Stack set value 7
    execute if score @s 1BC.Stack matches 8 run data modify storage api: Argument.Stack set value 8
    execute if score @s 1BC.Stack matches 9 run data modify storage api: Argument.Stack set value 9
    execute if score @s 1BC.Stack matches 10.. run data modify storage api: Argument.Stack set value 10

# チャージ用エフェクトを付与
    data modify storage api: Argument.ID set value 4229
    function api:entity/mob/effect/give
