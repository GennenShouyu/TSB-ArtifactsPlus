#> asset:artifact/3257.titanium_armor/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:3257} run function asset:artifact/3257.titanium_armor/give/2.give
