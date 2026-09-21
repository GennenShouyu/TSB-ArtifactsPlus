#> asset:artifact/3215.anti_mosquito_flash/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3215.anti_mosquito_flash/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う mainhand/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1.5 1

# 召喚
    data modify storage api: Argument.ID set value 3201
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    data modify storage api: Argument.FieldOverride.Damage set value 5.8
    execute positioned ~ ~0.5 ~ rotated ~ 0 positioned ^ ^ ^1 run function api:object/summon
