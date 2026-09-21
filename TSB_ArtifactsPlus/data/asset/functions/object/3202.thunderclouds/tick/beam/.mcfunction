#> asset:object/3202.thunderclouds/tick/beam/
#
#
#
# @within function asset:object/3202.thunderclouds/tick/

# 攻撃
    execute positioned ^ ^0.5 ^4 facing entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] eyes run function asset:object/3202.thunderclouds/tick/beam/recursive
    tag @s remove Landing
