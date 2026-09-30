#> asset:effect/4233.charge_positive/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:4233} run function asset:effect/4233.charge_positive/tick/