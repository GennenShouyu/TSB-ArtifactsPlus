#> asset:effect/4235.satiety_from_kelp/tick/
#
# Effectのtick処理
#
# @within function asset:effect/4235.satiety_from_kelp/_/tick

# 演出

# デクリメント
    execute store result storage asset:context this.Tick int 0.9999999999 run data get storage asset:context this.Tick 1
# 2 秒おきにエフェクトを付与
    execute if data storage asset:context this{Tick:0} run function asset:effect/4235.satiety_from_kelp/tick/give_effect
    execute if data storage asset:context this{Tick:0} run data modify storage asset:context this.Tick set value 40