# 100%のダメージを与える
    function api:modifier/max_health/get
    execute store result storage api: Argument.Damage double 1.0 run data get storage api: Return.MaxHealth
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは諸刃の剣の刃が突き刺さって死んだ","with":[{"selector":"@s"}]}]']
    function api:damage/modifier
    function api:damage/
    function api:damage/reset