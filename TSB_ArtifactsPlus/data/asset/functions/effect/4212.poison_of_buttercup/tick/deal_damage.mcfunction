#> asset:effect/4212.poison_of_buttercup/tick/deal_damage
#
#
#
# @within function asset:effect/4212.poison_of_buttercup/tick/

#> Private
# @private
#declare score_holder $UserID

# 最大体力の1.2%のダメージ
    function api:modifier/max_health/get
    execute store result storage api: Argument.Damage double 0.012 run data get storage api: Return.MaxHealth
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは仲間の自由のために死亡した","with":[{"selector":"@s"}]}]']
    function api:damage/modifier
    function api:damage/
    function api:damage/reset

# MPを6回復
    data modify storage api: Argument.Fluctuation set value 6
    function api:mp/fluctuation

# リセット
    scoreboard players reset $UserID Temporary
