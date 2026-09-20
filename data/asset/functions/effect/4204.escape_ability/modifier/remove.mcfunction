#> asset:effect/4204.escape_ability/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/4204.escape_ability/end/
#   asset:effect/4204.escape_ability/remove/

# 移動速度
    attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-00cb00000000

# 落下ダメージ無効化
    data modify storage api: Argument.UUID set value [I;1,3,4204,0]
    function api:modifier/fall_resistance/remove