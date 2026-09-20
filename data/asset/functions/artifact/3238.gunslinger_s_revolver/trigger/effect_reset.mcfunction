# バフ解除
    data modify storage api: Argument.ID set value 4217
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $1B0.Stack Temporary
    scoreboard players reset @s 1B0.Charge

# 最大体力の10.0%分のダメージを受ける
    function api:modifier/max_health/get
    execute store result storage api: Argument.Damage double 0.10 run data get storage api: Return.MaxHealth
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは早撃ち対決に敗れた","with":[{"selector":"@s"}]}]']
    function api:damage/modifier
    function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary
