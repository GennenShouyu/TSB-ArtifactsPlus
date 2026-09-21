#> asset:object/3204.thunder_bullet_2/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/3204/tick

#> Private
# @private
    #declare score_holder $Interval


# 使用者とTagで紐付け
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run tag @s add Owner

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 持ち主を起点に回転する
    execute positioned as @p[tag=Owner] run tp @s ~ ~2 ~ ~1 ~

# 一定tick毎にダメージ
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $32 Const
    execute if score $Interval Temporary matches 0 at @s run function asset:object/3204.thunder_bullet_2/tick/beam/
    scoreboard players reset $Interval Temporary

# 消滅 & 弾召喚
    execute if score @s General.Object.Tick matches 240.. at @s run function asset:object/3204.thunder_bullet_2/tick/kill

# リセット
    scoreboard players reset $UserID Temporary
    tag @p[tag=Owner] remove Owner
