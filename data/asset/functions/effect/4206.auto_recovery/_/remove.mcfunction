#> asset:effect/4206.auto_recovery/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:4206} run function asset:effect/4206.auto_recovery/remove/