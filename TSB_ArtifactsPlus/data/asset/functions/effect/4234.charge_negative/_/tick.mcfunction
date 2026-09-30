#> asset:effect/4234.charge_negative/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:4234} run function asset:effect/4234.charge_negative/tick/