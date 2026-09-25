#> asset:artifact/3261.the_elder_wand/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3261.the_elder_wand/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# スニークで回復発動
    execute if predicate lib:is_sneaking run function asset:artifact/3261.the_elder_wand/trigger/heal/

    execute unless predicate lib:is_sneaking positioned ~ ~1 ~ run function asset:artifact/3261.the_elder_wand/trigger/magic/bullet
    execute unless predicate lib:is_sneaking positioned ~ ~1 ~ run function asset:artifact/3261.the_elder_wand/trigger/magic/vfx/