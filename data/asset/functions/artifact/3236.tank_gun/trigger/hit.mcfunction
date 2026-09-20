#> asset:artifact/3236.tank_gun/trigger/hit
#
#
#
# @within function asset:artifact/3236.tank_gun/trigger/bullet

# ダメージの処理
    execute positioned ~ ~ ~ run function asset:artifact/3236.tank_gun/trigger/damage

# 着弾タグを消す
    tag @e[tag=LandingTarget] remove LandingTarget
