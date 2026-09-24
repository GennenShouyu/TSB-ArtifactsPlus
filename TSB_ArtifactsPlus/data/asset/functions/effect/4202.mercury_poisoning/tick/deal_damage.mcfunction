#> asset:effect/4202.mercury_poisoning/tick/deal_damage
#
#
#
# @within function asset:effect/4202.mercury_poisoning/tick/

#> Private
# @private
#declare score_holder $UserID

# 最大体力の3.6%分のダメージを受ける （1.2毎秒→3.6　三秒に一回）
    function api:modifier/max_health/get
    execute store result storage api: Argument.Damage double 0.036 run data get storage api: Return.MaxHealth
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは水銀中毒で死亡した","with":[{"selector":"@s"}]}]']
    function api:damage/modifier
    function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary
