#> asset:artifact/3272.plasmatic_rifle/trigger/bullet
#
# ビーム部
#
# @within function
#    asset:artifact/3272.plasmatic_rifle/trigger/3.main
#    asset:artifact/3272.plasmatic_rifle/trigger/bullet

# ここから先は神器側の効果の処理を書く

# 着弾検知
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0,limit=1] add LandingTarget

# 演出
    execute if entity @s[distance=..0.2] run particle sonic_boom ~ ~ ~ 0 0 0 0 1
    execute if entity @s[tag=!3272.marker] if entity @s[distance=2..] if entity @s[distance=..2.1] run function asset:artifact/3272.plasmatic_rifle/trigger/vfx/
    
    particle dust 0 1 0.949 0.5 ~ ~ ~ 0 0 0 0 6

# 距離減衰をするためにスコアを増やす
    scoreboard players add $Distance_Damping Temporary 1

# 跳弾でダメージ増加
    data modify storage api: Argument.Damage set value 500
    execute if entity @s[tag=3272.reflection_1] run data modify storage api: Argument.Damage set value 750
    execute if entity @s[tag=3272.reflection_2] run data modify storage api: Argument.Damage set value 1000
    execute if entity @s[tag=3272.reflection_3] run data modify storage api: Argument.Damage set value 1250
    execute if entity @s[tag=3272.reflection_4] run data modify storage api: Argument.Damage set value 1500

# 着弾
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,type=!player,tag=!Uninterferable,tag=!already_hit,dx=0,limit=1] at @s run function asset:artifact/3272.plasmatic_rifle/trigger/hit

# 着弾で跳弾用のmarkerを召喚
    execute positioned ^ ^ ^0.1 rotated ~ ~ if entity @s[tag=Landing,tag=!3272.marker] run function asset:artifact/3272.plasmatic_rifle/trigger/summon/1
    execute positioned ^ ^ ^0.1 rotated ~ ~ if entity @s[tag=Landing,tag=3272.reflection_1] run function asset:artifact/3272.plasmatic_rifle/trigger/summon/2
    execute positioned ^ ^ ^0.1 rotated ~ ~ if entity @s[tag=Landing,tag=3272.reflection_2] run function asset:artifact/3272.plasmatic_rifle/trigger/summon/3
    execute positioned ^ ^ ^0.1 rotated ~ ~ if entity @s[tag=Landing,tag=3272.reflection_3] run function asset:artifact/3272.plasmatic_rifle/trigger/summon/4

# 再起
    execute positioned ^ ^ ^0.1 if entity @s[tag=!Landing,distance=..30] run function asset:artifact/3272.plasmatic_rifle/trigger/bullet