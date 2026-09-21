#> asset:artifact/3240.reapers_scythe/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/3240.reapers_scythe/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# 発動ロックエフェクトがついてるか確認
    execute if entity @s[tag=CanUsed] run data modify storage api: Argument.ID set value 4218
    execute if entity @s[tag=CanUsed] run function api:entity/mob/effect/get/from_id
# 付与されていたらCanUsedを削除
    execute if entity @s[tag=CanUsed] if data storage api: Return.Effect run tag @s remove CanUsed

# 発動ロックエフェクトがついてるか確認
    execute if entity @s[tag=CanUsed] run data modify storage api: Argument.ID set value 4219
    execute if entity @s[tag=CanUsed] run function api:entity/mob/effect/get/from_id
# 付与されていたらCanUsedを削除
    execute if entity @s[tag=CanUsed] if data storage api: Return.Effect run tag @s remove CanUsed

    execute if data storage api: Return.Effect run tellraw @s [{"text":"クールダウンが終わっていません。","color":"red"}]

# MPが最大まで溜まってるか調べる
    execute if entity @s[tag=CanUsed] run function api:entity/player/get_mp_per
    execute if entity @s[tag=CanUsed] store result score @s Temporary run data get storage api: Return.MPPer 100
    execute if entity @s[tag=CanUsed] unless score @s Temporary matches 100 run tellraw @s [{"text":"発動するにはMPが最大まで回復している必要があります。","color":"red"}]
    execute if entity @s[tag=CanUsed] unless score @s Temporary matches 100 run tag @s remove CanUsed

# リセット
    scoreboard players reset @s Temporary

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/3240.reapers_scythe/trigger/3.main