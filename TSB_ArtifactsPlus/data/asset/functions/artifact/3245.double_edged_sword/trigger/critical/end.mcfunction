#> asset:artifact/3245.double_edged_sword/trigger/critical/end
#
#
#
# @within function asset:artifact/3245.double_edged_sword/trigger/critical/count

# 後処理

# 発光の削除
    effect clear @e[tag=1B9.Target] minecraft:glowing

# タグ削除
    tag @e[tag=1B9.Target] remove 1B9.Target

# チーム削除
    team remove color_red
    team remove color_gold
    team remove color_yellow
    team remove color_green
    team remove color_aqua
    team remove color_blue
    team remove color_light_purple

# 50%で確変発動
    execute if predicate lib:random_pass_per/50 run function asset:artifact/3245.double_edged_sword/trigger/critical/bonus_round