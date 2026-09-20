#> asset:artifact/1264.simple_grenade/trigger/throw
#
#
#
# @within function asset:artifact/1264.simple_grenade/trigger/3.main

#> Private
# @private
    #declare tag SpreadMarker
    #declare score_holder $1A9.Stack

# チャージバフ取得
    data modify storage api: Argument.ID set value 4216
    function api:entity/mob/effect/get/from_id

# スタックをスコアへ
    execute store result score $1A9.Stack Temporary run data get storage api: Return.Effect.Stack

# スタック毎のダメージ設定
    execute if score $1A9.Stack Temporary matches 0 run data modify storage api: Argument.FieldOverride.Damage set value 180
    execute if score $1A9.Stack Temporary matches 1 run data modify storage api: Argument.FieldOverride.Damage set value 320
    execute if score $1A9.Stack Temporary matches 2 run data modify storage api: Argument.FieldOverride.Damage set value 360
    execute if score $1A9.Stack Temporary matches 3 run data modify storage api: Argument.FieldOverride.Damage set value 400
    execute if score $1A9.Stack Temporary matches 4 run data modify storage api: Argument.FieldOverride.Damage set value 450
    execute if score $1A9.Stack Temporary matches 5 run data modify storage api: Argument.FieldOverride.Damage set value 510

# Motionをランダムにする
    execute store result storage api: Argument.FieldOverride.Motion float 0.01 run random value 70..80

# 前方拡散
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 3
    data modify storage lib: Argument.Spread set value 0.5
    execute as @e[type=marker,tag=SpreadMarker,distance=..0.01,limit=1] run function lib:forward_spreader/circle

# 50%の確率で左回転にする
    execute if predicate lib:random_pass_per/50 run data modify storage api: Argument.FieldOverride.LeftRotate set value true

# Object召喚
    data modify storage api: Argument.ID set value 3213
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] eyes run function api:object/summon

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
