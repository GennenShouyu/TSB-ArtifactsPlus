#> asset:object/3220.plasmatic_slash/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/3220/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# vfx
    execute if score @s General.Object.Tick matches 20 run function asset:object/3220.plasmatic_slash/tick/vfx

# 20Tickで起動
    execute if score @s General.Object.Tick matches 20.. run tp @s ^ ^ ^3
    execute if score @s General.Object.Tick matches 20.. run function asset:object/3220.plasmatic_slash/tick/damage



# 消滅処理
    kill @s[scores={General.Object.Tick=28..}]
