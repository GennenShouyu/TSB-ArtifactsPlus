# 爆発ダメージ設定
    data modify storage api: Argument.Damage set value 1020
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute positioned as @e[type=#lib:living,type=!player,tag=!Uninterferable,tag=1A0.Target] as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..3] run function api:damage/
    function api:damage/reset
