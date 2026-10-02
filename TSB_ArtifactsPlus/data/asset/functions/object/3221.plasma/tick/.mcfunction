#> asset:object/3221.plasma/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/3220/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 前進、ランダムで角度変更
    function asset:object/3221.plasma/tick/vfx
    tp @s ^ ^ ^5
    execute if predicate lib:random_pass_per/40 run function asset:object/3221.plasma/tick/rotate

# 消滅処理
    kill @s[scores={General.Object.Tick=10..}]