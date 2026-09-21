#> asset:object/3203.thunder_bullet/tick/beam/
#
#
#
# @within function asset:object/3203.thunder_bullet/tick/

# 角度分岐、値を渡してmachesで判定した後に個別変数に保存したい

# 攻撃
    execute rotated ~90 0 positioned ^ ^0.5 ^4 facing entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] eyes run function asset:object/3203.thunder_bullet/tick/beam/recursive
    tag @s remove Landing
