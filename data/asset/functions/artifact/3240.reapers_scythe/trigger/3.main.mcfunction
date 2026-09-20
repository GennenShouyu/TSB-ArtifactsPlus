#> asset:artifact/4218.raging_flame/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/4218.raging_flame/trigger/2.check_condition

# ここから先は神器側の効果の処理を書く

# MPを0に設定
    function api:mp/set {MP:0}

# particle
    execute positioned ~ ~1 ~ run function asset:artifact/4218.raging_flame/trigger/vfx
    particle minecraft:flame ~ ~1 ~ 0.4 1.0 0.4 0.01 30
    particle minecraft:trial_spawner_detection ~ ~1 ~ 0.5 0.5 0.5 0.05 30

# 音
    playsound minecraft:block.end_portal.spawn player @a ~ ~ ~ 1 1
    playsound minecraft:block_end_portal_frame.fill player @a ~ ~ ~ 1 1

# エフェクトを付与
    data modify storage api: Argument.ID set value 4218
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
