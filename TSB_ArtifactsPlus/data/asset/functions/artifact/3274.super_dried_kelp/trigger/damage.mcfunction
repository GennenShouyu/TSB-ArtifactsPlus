# 100%のダメージを与える
    function api:modifier/max_health/get
    execute store result storage api: Argument.Damage double 2.0 run data get storage api: Return.MaxHealth
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは昆布の食べ過ぎで胃が爆発した","with":[{"selector":"@s"}]}]']
    function api:damage/modifier
    function api:damage/
    function api:damage/reset