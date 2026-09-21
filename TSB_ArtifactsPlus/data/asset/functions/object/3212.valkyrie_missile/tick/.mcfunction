#> asset:object/3212.valkyrie_missile/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/3212/tick

#> Private
# @private

# 初期設定
    execute if score @s General.Object.Tick matches 1 run function asset:object/3212.valkyrie_missile/tick/macro/macro_first
# 関数を渡して実行
    execute unless score @s General.Object.Tick matches 1 run function asset:object/3212.valkyrie_missile/tick/macro/macro

# スコア加算
    scoreboard players add @s General.Object.Tick 1