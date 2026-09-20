#> asset:effect/4203.charge_salt/_/remove
#
# Effectが神器や牛乳によって削除された時に実行されるfunction
#
# @within tag/function asset:effect/remove

execute if data storage asset:context {id:4203} run function asset:effect/4203.charge_salt/remove/