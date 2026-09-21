#> asset:artifact/3223.combat_cutter/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:3223} run function asset:artifact/3223.combat_cutter/give/2.give
