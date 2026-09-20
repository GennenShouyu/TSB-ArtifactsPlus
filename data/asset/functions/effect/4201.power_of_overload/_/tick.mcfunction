#> asset:effect/4201.power_of_overload/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:4201} run function asset:effect/4201.power_of_overload/tick/