#> asset:artifact/3247.ramune/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3247.ramune/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 効果音
    playsound minecraft:entity.arrow.hit_player player @a[distance=..8] ~ ~ ~ 20 1

# 回復エフェクト
    data modify storage api: Argument.ID set value 301
    data modify storage api: Argument.Stack set value 1
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    data modify storage api: Argument.FieldOverride.Heal set value 1.0f
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
