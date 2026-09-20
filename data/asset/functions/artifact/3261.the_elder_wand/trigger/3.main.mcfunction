#> asset:artifact/3261.the_elder_wand/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3261.the_elder_wand/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# パーティクル
    execute positioned ~ ~1 ~ run function asset:artifact/3261.the_elder_wand/trigger/vfx
    playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 2 1.2

# 回復
    data modify storage api: Argument.Heal set value 6.0f
    function api:heal/modifier
    execute as @a[distance=..4.5,sort=nearest,limit=6] run function api:heal/
# リセット
    function api:heal/reset


