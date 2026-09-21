#> asset:object/3211.missile_target/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/3211/tick

# Tag付与
    execute if score @s General.Object.Tick matches ..1 run function asset:object/3211.missile_target/tick/tags/add_tag

# 回転
    tp @s ~ ~ ~ ~10 ~

# パーティクル
    particle minecraft:electric_spark ^ ^ ^1 0 0 0 0 1 force
    particle minecraft:electric_spark ^ ^ ^-1 0 0 0 0 1 force

# スコア加算
    scoreboard players add @s General.Object.Tick 1

# 残り攻撃回数が0になれば消滅
    execute if score @s General.Object.Tick matches 120.. run function asset:object/3211.missile_target/tick/kill
