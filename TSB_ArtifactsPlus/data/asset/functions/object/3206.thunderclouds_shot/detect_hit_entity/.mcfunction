#> asset:object/3206.thunderclouds_shot/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/3206/detect_hit_entity

# Tagがあればヒット判定 割と大きめ
    execute if entity @s[tag=3206.Damage] positioned ~-0.75 ~-0.75 ~-0.75 if entity @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,dx=0.5,dy=0.5,dz=0.5,limit=1] run data modify storage asset:context IsHitEntity set value true
