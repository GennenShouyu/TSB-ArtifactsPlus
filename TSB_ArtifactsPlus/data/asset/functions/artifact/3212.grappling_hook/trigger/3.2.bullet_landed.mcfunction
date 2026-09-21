#> asset:artifact/3212.grappling_hook/trigger/3.2.bullet_landed
#
#
#
# @within function asset:artifact/3212.grappling_hook/trigger/3.1.bullet

# 着弾の演出
    particle minecraft:explosion ~ ~ ~ 0.1 0.1 0.1 0 10
    playsound minecraft:item.trident.hit_ground player @a

# テレポートする
    tp @p[tag=this] ^ ^1.5 ^0.5

# エフェクトを付与
    data modify storage api: Argument.ID set value 4204
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 演出
    playsound block.respawn_anchor.deplete player @a ~ ~ ~ 1 1.5
    playsound ogg:entity.glow_squid.squirt3 player @a ~ ~ ~ 1 1.3