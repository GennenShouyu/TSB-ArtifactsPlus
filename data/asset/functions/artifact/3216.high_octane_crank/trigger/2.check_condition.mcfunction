#> asset:artifact/3216.high_octane_crank/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/3216.high_octane_crank/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

# 重ねがけでない（エフェクトの有無で判断）ならCanUsedを削除し、通常の処理を実行。
# クールタイムを生じさせたくないため、このような処理にしています。
    execute if entity @s[tag=CanUsed] run data modify storage api: Argument.ID set value 4205
    execute if entity @s[tag=CanUsed] run function api:entity/mob/effect/get/from_id
    execute if entity @s[tag=CanUsed] unless data storage api: Return.Effect run tag @s remove CanUsed
    execute if entity @s unless data storage api: Return.Effect run function asset:artifact/3216.high_octane_crank/trigger/normal/first_use

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/3216.high_octane_crank/trigger/3.main