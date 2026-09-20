#> asset:artifact/3260.horcruxes/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/3260.horcruxes/trigger/dis_equip/

# 演出
    playsound minecraft:item.armor.equip_generic player @a ~ ~ ~ 1 0.8

# エフェクト削除
    data modify storage api: Argument.ID set value 4226
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
