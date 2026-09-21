#> asset:artifact/3269.firebolt_thrower/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3269.firebolt_thrower/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 消費
    clear @s arrow 1

# 効果音
    playsound entity.arrow.shoot player @a ~ ~ ~ 1.0 1.0

# 連鎖カウントをリセット
    scoreboard players set #global 1B4.ChainCount 0

# 矢を召喚する
    data modify storage api: Argument.ID set value 3219
    data modify storage api: Argument.FieldOverride.Damage set value 525
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^ ^ run function api:object/summon