#> asset:artifact/3272.plasmatic_rifle/trigger/hit
#
#
# @within function
#    asset:artifact/3272.plasmatic_rifle/trigger/3.main
#    asset:artifact/3272.plasmatic_rifle/trigger/bullet


# ここから先は神器側の効果の処理を書く
# 演出
    execute at @e[tag=LandingTarget,limit=1] run particle minecraft:block redstone_block ~ ~1.2 ~ 0.4 0.4 0.4 0 4
# ダメージ設定
    # 属性
        data modify storage api: Argument.AttackType set value "Magic"
        data modify storage api: Argument.ElementType set value "Thunder"
    # ダメージ量については跳弾でダメージ増加の仕様によりbullet側にて記述
    # ダメージ
        function api:damage/modifier
        execute as @e[tag=LandingTarget] run function api:damage/
# リセット
    function api:damage/reset

# エフェクトを付与
    data modify storage api: Argument.ID set value 4234
    execute as @e[tag=LandingTarget] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# エフェクトが付いているなら放電
    data modify storage api: Argument.ID set value 4233
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run function asset:artifact/3272.plasmatic_rifle/trigger/discharge

# 多段ヒット防止のために被弾済みタグを付与
    tag @e[tag=LandingTarget] add already_hit

# タグを削除
    tag @e[tag=LandingTarget] remove LandingTarget

# 跳弾用マーカーの削除
    execute if entity @e[tag=3272.reflection_4] run kill @e[tag=3272.marker]
