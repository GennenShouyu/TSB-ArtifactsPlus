#> asset:artifact/3241.tamatebako/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3241.tamatebako/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# particle
    particle minecraft:cloud ~ ~1 ~ 0.4 1.0 0.4 0.3 25
    particle minecraft:cloud ~ ~1 ~ 0.4 1.0 0.4 1.0 20

# 音
    playsound entity.generic.burn player @a ~ ~ ~ 2 1
    playsound block.sand.break player @a ~ ~ ~ 2 1 0

# エフェクトを付与
    data modify storage api: Argument.ID set value 4220
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# MP回復
    data modify storage api: Argument.Fluctuation set value 600
    function api:mp/fluctuation