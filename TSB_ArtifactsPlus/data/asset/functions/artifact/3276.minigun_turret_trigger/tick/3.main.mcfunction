#> asset:artifact/3276.minigun_turret_trigger/tick/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3276.minigun_turret_trigger/tick/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 元アイテムの返却
    data modify storage api: Argument.ID set value 3275
    function api:artifact/replace/from_id

# タグ削除
    tag @s[tag=3275.TurretReturn] remove 3275.TurretReturn