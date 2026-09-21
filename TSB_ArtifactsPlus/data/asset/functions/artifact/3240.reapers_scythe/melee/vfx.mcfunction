# 演出
    playsound item.trident.throw player @a ~ ~ ~ 1 0.6
    playsound minecraft:entity.glow_squid.squirt player @a ~ ~ ~ 1 2
    playsound entity.evoker.prepare_summon player @a ~ ~ ~ 1.2 1.8 0

# 演出
    data modify storage api: Argument.ID set value 3215
    execute store result storage api: Argument.FieldOverride.Count int 1 run random value 1..3
    execute anchored eyes positioned ^ ^-0.2 ^-0.5 run function api:object/summon