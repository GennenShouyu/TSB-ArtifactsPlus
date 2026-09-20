#> asset:object/3202.thunderclouds/tick/kill
#
# 消滅時の処理
#
# @within function asset:object/3202.thunderclouds/tick/

# 演出
    playsound minecraft:item.trident.thunder player @a ~ ~ ~ 2 1
    playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 2 0.7
    playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 0.4 2

# 弾を召喚
    execute rotated ~ 0 positioned ^ ^1.3 ^4 run function asset:object/3202.thunderclouds/tick/shot_summon
    execute rotated ~90 0 positioned ^ ^1.3 ^4 run function asset:object/3202.thunderclouds/tick/shot_summon
    execute rotated ~180 0 positioned ^ ^1.3 ^4 run function asset:object/3202.thunderclouds/tick/shot_summon
    execute rotated ~270 0 positioned ^ ^1.3 ^4 run function asset:object/3202.thunderclouds/tick/shot_summon

# 演出
    execute rotated ~ 0 positioned ^ ^1.3 ^4 run function asset:object/3202.thunderclouds/tick/thunder
    execute rotated ~90 0 positioned ^ ^1.3 ^4 run function asset:object/3202.thunderclouds/tick/thunder
    execute rotated ~180 0 positioned ^ ^1.3 ^4 run function asset:object/3202.thunderclouds/tick/thunder
    execute rotated ~270 0 positioned ^ ^1.3 ^4 run function asset:object/3202.thunderclouds/tick/thunder

# 消滅
    kill @s
