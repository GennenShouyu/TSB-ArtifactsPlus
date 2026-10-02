# 帯電：正　エフェクトを付与
    data modify storage api: Argument.ID set value 4233
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 帯電：負　エフェクトが付いているなら放電
    data modify storage api: Argument.ID set value 4234
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run function asset:artifact/3273.plasmatic_blade/trigger/discharge