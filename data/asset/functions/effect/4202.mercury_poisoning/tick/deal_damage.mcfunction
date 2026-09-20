#> asset:effect/4202.mercury_poisoning/tick/deal_damage
#
#
#
# @within function asset:effect/4202.mercury_poisoning/tick/

#> Private
# @private
#declare score_holder $UserID

# 最大体力の2.0%分のダメージを受ける
    function api:modifier/max_health/get
    execute store result storage api: Argument.Damage double 0.020 run data get storage api: Return.MaxHealth
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは水銀中毒で死亡した","with":[{"selector":"@s"}]}]']
    function api:damage/modifier
    function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary
