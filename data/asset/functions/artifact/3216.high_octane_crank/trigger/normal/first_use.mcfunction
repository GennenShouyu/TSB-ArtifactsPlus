#> asset:artifact/3216.high_octane_crank/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3216.high_octane_crank/trigger/2.check_condition

# ここから先は神器側の効果の処理を書く

# 効果音等
    playsound minecraft:item.trident.hit player @a ~ ~ ~ 1 1.6
    particle minecraft:block redstone_block ~ ~1.2 ~ 0.4 0.4 0.4 0 4

# MP消費
    data modify storage api: Argument.Fluctuation set value -35
    function api:mp/fluctuation

# 20%のダメージを与える
    function api:modifier/max_health/get
    execute store result storage api: Argument.Damage double 0.2 run data get storage api: Return.MaxHealth
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは薬物の使いすぎで廃人と化した","with":[{"selector":"@s"}]}]']
    function api:damage/modifier
    function api:damage/
    function api:damage/reset

# スタック更新
    data modify storage asset:context Stack set value 1
    data modify storage api: Argument.Stack set value 1

# エフェクトを付与
    data modify storage api: Argument.ID set value 4205
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
