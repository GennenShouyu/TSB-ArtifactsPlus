#> asset:artifact/3267.chill_gale_knife/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/3267.chill_gale_knife/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    # クリティカルかつスピードバーストが付与されているなら分岐
    execute if entity @s[tag=CanUsed] if score @s 1BC.Stack matches 1.. if data storage asset:context Attack{Crit:true} run function asset:artifact/3267.chill_gale_knife/trigger/crit/

    # 上記に該当しない場合は通常の攻撃
    execute if entity @s[tag=CanUsed] unless data storage asset:context Attack{Crit:true} run function asset:artifact/3267.chill_gale_knife/trigger/3.main
    execute if entity @s[tag=CanUsed] if data storage asset:context Attack{Crit:true} unless score @s 1BC.Stack matches 1.. run function asset:artifact/3267.chill_gale_knife/trigger/3.main