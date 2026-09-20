#> asset:object/3215.reapers_scythe_slash/summon/m
#
# @input args:
#   Rotation : float @ 2
# @within function asset:object/3215.reapers_scythe_slash/summon/

# 元となるEntityを召喚する
    $summon marker ~ ~ ~ {Rotation:$(Rotation),Tags:["ObjectInit"]}
