#> asset:artifact/3256.titanium_helm/equip/2.check_condition
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/3256.titanium_helm/equip/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/head
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/3256.titanium_helm/equip/3.main
