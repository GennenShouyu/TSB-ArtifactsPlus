# 演出
    summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;9568226]}]}}}}
    particle flash ~ ~ ~ 0 0 0 0 1 normal @a
    particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1
    particle dust 0.447 1 0.741 1 ~ ~ ~ 0.5 1.0 0.5 0.1 20 normal @a

# エリアダメージ
    data modify storage api: Argument.Damage set value 1100
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..3] run function api:damage/
    function api:damage/reset

# エフェクトの削除
    data modify storage api: Argument.ID set value 4233
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

    data modify storage api: Argument.ID set value 4234
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset