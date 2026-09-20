#> asset:object/3201.anti_mosquito_flash/tick/beam/
#
#
#
# @within function asset:object/3201.anti_mosquito_flash/tick/

# 攻撃
    execute positioned ^ ^-0.3 ^ facing entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] eyes run function asset:object/3201.anti_mosquito_flash/tick/beam/recursive
    tag @s remove Landing
