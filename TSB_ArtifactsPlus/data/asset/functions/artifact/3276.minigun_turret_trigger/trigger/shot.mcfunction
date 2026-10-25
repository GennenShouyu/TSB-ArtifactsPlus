#> asset:artifact/3276.minigun_turret_trigger/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3276.minigun_turret_trigger/trigger/2.check_condition
#> Private
# @private
    #declare score_holder $Random
    #declare tag SpreadMarker

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 前方拡散設定
    execute anchored eyes positioned ^ ^-0.5 ^2 rotated 0 0 run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 2.0
    data modify storage lib: Argument.Spread set value 0.3
# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle
# 発砲
    execute anchored eyes positioned ^ ^-0.5 ^2 rotated 0 0 facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet run function asset:artifact/3276.minigun_turret_trigger/trigger/bullet
    tag @s remove Landing

# 乱数取得
    # execute store result score $Random Temporary run random value 0..2
# 向きを適当に変える
    # execute if score $Random Temporary matches 0 run tp @s ~ ~ ~ ~ ~
    # execute if score $Random Temporary matches 1 run tp @s ~ ~ ~ ~-0.5 ~0.5
    # execute if score $Random Temporary matches 2 run tp @s ~ ~ ~ ~0.5 ~-0.5
    # scoreboard players reset $Random Temporary

# リセット
    kill @e[type=marker,tag=SpreadMarker]
    scoreboard players reset $Random Temporary
    scoreboard players reset $Appropriate_Distance Temporary
    scoreboard players reset $Distance_Damping Temporary
    scoreboard players reset $MinDamage Temporary
    scoreboard players reset $Damage Temporary
