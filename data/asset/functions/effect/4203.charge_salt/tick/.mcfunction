#> asset:effect/4203.charge_salt/tick/
#
# Effectのtick処理
#
# @within function asset:effect/4203.charge_salt/_/tick

# デクリメント
    execute store result storage asset:context this.Tick int 0.9999999999 run data get storage asset:context this.Tick 1
# 2秒おきにMP回復
    execute if data storage asset:context this{Tick:0} run function asset:effect/4203.charge_salt/tick/recovery_mp
    execute if data storage asset:context this{Tick:0} run data modify storage asset:context this.Tick set value 40
