#> asset:effect/4203.charge_salt/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:4203} run function asset:effect/4203.charge_salt/tick/