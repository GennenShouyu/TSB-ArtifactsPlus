# エフェクトが付いてるなら地を這う斬撃
    data modify storage api: Argument.ID set value 4218
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run function asset:artifact/3240.reapers_scythe/melee/summon_slash