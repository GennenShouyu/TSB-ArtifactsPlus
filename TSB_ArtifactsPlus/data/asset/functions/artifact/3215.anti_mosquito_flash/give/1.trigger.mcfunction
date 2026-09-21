#> asset:artifact/3215.anti_mosquito_flash/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:3215} run function asset:artifact/3215.anti_mosquito_flash/give/2.give
