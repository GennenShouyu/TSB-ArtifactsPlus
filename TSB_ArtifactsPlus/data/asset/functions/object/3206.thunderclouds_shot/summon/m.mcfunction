#> asset:object/3206.thunderclouds_shot/summon/m
#
# @input args:
#   Rotation : float @ 2
# @within function asset:object/3206.thunderclouds_shot/summon/

# 元となるEntityを召喚する
    $summon marker ~ ~ ~ {Tags:["ObjectInit"],Rotation:$(Rotation)}
