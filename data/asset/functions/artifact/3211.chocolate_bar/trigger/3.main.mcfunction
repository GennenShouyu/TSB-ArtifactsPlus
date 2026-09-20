#> asset:artifact/3211.chocolate_bar/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3211.chocolate_bar/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# MP回復
    data modify storage api: Argument.Fluctuation set value 65
    function api:mp/fluctuation

# HP回復
    data modify storage api: Argument.Heal set value 25
    function api:heal/modifier
    function api:heal/
