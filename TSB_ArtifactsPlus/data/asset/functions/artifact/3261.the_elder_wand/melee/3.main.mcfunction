#> asset:artifact/3261.the_elder_wand/melee/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3261.the_elder_wand/melee/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# MPを18消費
    data modify storage api: Argument.Fluctuation set value -18
    function api:mp/fluctuation

# 演出
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function asset:artifact/3261.the_elder_wand/melee/vfx

# ダメージ
    data modify storage api: Argument.Damage set value 190
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function api:damage/
    function api:damage/reset
