#> asset:artifact/3272.plasmatic_rifle/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/3272.plasmatic_rifle/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    # シフトで使用の場合はチェックをスキップする
    execute if predicate lib:is_sneaking run function asset:artifact/3272.plasmatic_rifle/trigger/mode_change/

    # 通常使用
    execute if entity @s[tag=CanUsed] unless predicate lib:is_sneaking run function asset:artifact/3272.plasmatic_rifle/trigger/3.main