#> asset:effect/4218.brutal_murder/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/4218.brutal_murder/_/end

# 補正を削除する
    function asset:effect/4218.brutal_murder/modifier/remove

# 演出
    playsound minecraft:item.trident.thunder player @a ~ ~ ~ 1 1
    playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 1 0.7

# エフェクトを付与
    data modify storage api: Argument.ID set value 4219
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset