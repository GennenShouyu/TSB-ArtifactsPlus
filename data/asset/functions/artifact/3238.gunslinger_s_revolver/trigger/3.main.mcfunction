#> asset:artifact/3238.gunslinger_s_revolver/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3238.gunslinger_s_revolver/trigger/2.check_condition

#> Private
# @private
    #declare tag SpreadMarker
    #declare score_holder $Random

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:entity.firework_rocket.blast neutral @a ~ ~ ~ 1 1.5
    playsound minecraft:item.totem.use player @a ~ ~ ~ 0.4 2

# 残り回数が1回の時発動した場合
    execute unless data storage asset:context Items.mainhand.id run data modify storage api: Argument.ID set value 3239
    execute unless data storage asset:context Items.mainhand.id run function api:artifact/replace/from_id

# 前方拡散設定
    execute anchored eyes positioned ^-0.35 ^-0.15 ^ run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 2.0
    data modify storage lib: Argument.Spread set value 0.01

# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle
# 発砲
    execute anchored eyes positioned ^-0.35 ^-0.15 ^ facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet run function asset:artifact/3238.gunslinger_s_revolver/trigger/bullet
    tag @s remove Landing

# 疑似乱数取得
    execute store result score $Random Temporary run random value 0..2
# 向きを適当に変える
    execute unless predicate lib:is_sneaking if score $Random Temporary matches 0 run tp @s ~ ~ ~ ~ ~-1
    execute unless predicate lib:is_sneaking if score $Random Temporary matches 1 run tp @s ~ ~ ~ ~-1 ~-1
    execute unless predicate lib:is_sneaking if score $Random Temporary matches 2 run tp @s ~ ~ ~ ~1 ~-1
    scoreboard players reset $Random Temporary

# リセット
    kill @e[type=marker,tag=SpreadMarker]
    scoreboard players reset $Random Temporary
    scoreboard players reset $Appropriate_Distance Temporary
    scoreboard players reset $Distance_Damping Temporary
    scoreboard players reset $MinDamage Temporary
    scoreboard players reset $Damage Temporary
