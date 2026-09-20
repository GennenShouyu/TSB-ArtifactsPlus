#> asset:effect/4206.auto_recovery/tick/
#
# Effectのtick処理
#
# @within function asset:effect/4206.auto_recovery/_/tick

# デクリメント
    execute store result storage asset:context this.Tick int 0.9999999999 run data get storage asset:context this.Tick 1
# 1秒おきにMP回復
    execute if data storage asset:context this{Tick:0} run function asset:effect/4206.auto_recovery/tick/recovery_hp
    execute if data storage asset:context this{Tick:0} run data modify storage asset:context this.Tick set value 20
