#> asset:object/3202.thunderclouds/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/3202/tick

#> Private
# @private
    #declare score_holder $Interval


# 使用者とTagで紐付け
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run tag @s add Owner

# Tick加算
    scoreboard players add @s General.Object.Tick 1
    execute at @s run function asset:object/3202.thunderclouds/tick/vfx/blue

# 持ち主を起点に回転する
    execute positioned as @p[tag=Owner] run tp @s ~ ~2 ~ ~1 ~

# 一定tick毎にダメージ
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $32 Const
    execute if score $Interval Temporary matches 0 at @s run function asset:object/3202.thunderclouds/tick/beam/
    execute if score $Interval Temporary matches 0 at @s run playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1 0.6
    scoreboard players reset $Interval Temporary

# 消滅 & 弾召喚
    execute if score @s General.Object.Tick matches 240.. at @s run function asset:object/3202.thunderclouds/tick/kill

# リセット
    scoreboard players reset $UserID Temporary
    tag @p[tag=Owner] remove Owner
