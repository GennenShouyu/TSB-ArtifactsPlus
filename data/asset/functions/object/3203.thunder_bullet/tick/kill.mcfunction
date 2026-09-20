#> asset:object/3203.thunder_bullet/tick/kill
#
# 消滅時の処理
#
# @within function asset:object/3203.thunder_bullet/tick/

# 演出
    playsound minecraft:item.trident.thunder player @a ~ ~ ~ 4 1
    playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 4 0.7

# 消滅
    kill @s
