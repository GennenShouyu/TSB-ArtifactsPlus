# 多段ヒット対策タグの削除
    tag @e[tag=already_hit] remove already_hit
# 召喚
    summon minecraft:marker ~ ~ ~ {Tags:["3272.reflection_2","3272.marker"]}
# 向きのコピー
    data modify entity @e[tag=3272.reflection_2,limit=1] Rotation set from entity @s Rotation
# 反射処理
    execute as @e[tag=3272.reflection_2] at @s run function asset:artifact/3272.plasmatic_rifle/trigger/summon/reflection
# bulletの実行
    execute as @e[tag=3272.reflection_2] at @s run function asset:artifact/3272.plasmatic_rifle/trigger/bullet