#> asset:effect/4202.mercury_poisoning/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:4202} run function asset:effect/4202.mercury_poisoning/tick/