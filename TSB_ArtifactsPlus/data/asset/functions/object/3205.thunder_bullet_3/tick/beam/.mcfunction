#> asset:object/3205.thunder_bullet_3/tick/beam/
#
#
#
# @within function asset:object/3205.thunder_bullet_3/tick/

# 攻撃
    execute rotated ~270 0 positioned ^ ^0.5 ^4 facing entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] eyes run function asset:object/3205.thunder_bullet_3/tick/beam/recursive
    tag @s remove Landing
