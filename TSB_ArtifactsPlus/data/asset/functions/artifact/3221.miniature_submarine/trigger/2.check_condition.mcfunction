#> asset:artifact/3221.miniature_submarine/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/3221.miniature_submarine/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# 水中にいない場合CanUsedを削除
    execute unless predicate lib:is_in_water/include_flowing run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/3221.miniature_submarine/trigger/3.main
