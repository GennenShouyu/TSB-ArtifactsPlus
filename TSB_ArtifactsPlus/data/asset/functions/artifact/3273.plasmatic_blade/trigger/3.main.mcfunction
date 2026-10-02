#> asset:artifact/3273.plasmatic_blade/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3273.plasmatic_blade/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# コンボカウントのリセット
    execute if score @s 1BB.Combo matches 4.. run scoreboard players reset @s 1BB.Combo
    execute unless score $TickSinceLastUse Temporary matches ..30 run scoreboard players reset @s 1BB.Combo

# コンボカウント加算
    scoreboard players add @s 1BB.Combo 1
# VFX
    execute if score @s 1BB.Combo matches 1 anchored eyes run function asset:artifact/3273.plasmatic_blade/trigger/vfx/slash1
    execute if score @s 1BB.Combo matches 2 anchored eyes run function asset:artifact/3273.plasmatic_blade/trigger/vfx/slash2
    execute if score @s 1BB.Combo matches 3 anchored eyes run function asset:artifact/3273.plasmatic_blade/trigger/vfx/slash3
    execute if score @s 1BB.Combo matches 4 anchored eyes run function asset:artifact/3273.plasmatic_blade/trigger/vfx/slash4

# ダメージ
    execute anchored eyes run function asset:artifact/3273.plasmatic_blade/trigger/damage

# コンボフィニッシュでエリアダメージ
    execute if score @s 1BB.Combo matches 4 anchored eyes run function asset:artifact/3273.plasmatic_blade/trigger/slash_final
