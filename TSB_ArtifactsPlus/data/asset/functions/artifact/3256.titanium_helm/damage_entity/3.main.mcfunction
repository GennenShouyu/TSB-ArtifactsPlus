#> asset:artifact/3256.titanium_helm/damage_entity/3.main
#
# 神器のトリガー処理
#
# @within function asset:artifact/3256.titanium_helm/damage_entity/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# スコア設定
    execute if predicate lib:random_pass_per/30 run function asset:artifact/3256.titanium_helm/damage_entity/update_stack
