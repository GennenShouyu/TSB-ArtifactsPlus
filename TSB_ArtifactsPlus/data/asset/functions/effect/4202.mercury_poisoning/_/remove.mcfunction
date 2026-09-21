#> asset:effect/4202.mercury_poisoning/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:4202} run function asset:effect/4202.mercury_poisoning/remove/