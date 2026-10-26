#> asset:artifact/3276.minigun_turret_trigger/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/3276.minigun_turret_trigger/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

    execute if entity @s[tag=CanUsed] unless entity @s[tag=3275.Ride] run tag @s[tag=CanUsed] remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/3276.minigun_turret_trigger/trigger/3.main