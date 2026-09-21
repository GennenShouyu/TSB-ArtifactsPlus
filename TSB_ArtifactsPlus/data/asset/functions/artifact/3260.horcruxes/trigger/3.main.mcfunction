#> asset:artifact/3260.horcruxes/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3260.horcruxes/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    # function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 効果音
    playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 1 1
    playsound ogg:block.smithing_table.smithing_table2 player @a ~ ~ ~ 0.5 1.0
    playsound disabled_sounds:item.armor.equip_iron player @a ~ ~ ~ 0.5 1
    particle enchanted_hit ~ ~1 ~ 0 0 0 0.5 10

# エフェクト付与
    data modify storage api: Argument.ID set value 4226
    data modify storage api: Argument.FieldOverride.RegenInterval set value 60
    data modify storage api: Argument.FieldOverride.MaxBarrierAmount set value 20
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
