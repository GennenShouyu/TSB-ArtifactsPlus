#> asset:effect/4206.auto_recovery/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:4206} run function asset:effect/4206.auto_recovery/tick/