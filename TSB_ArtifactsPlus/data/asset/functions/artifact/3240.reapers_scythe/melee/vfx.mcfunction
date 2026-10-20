# 演出
    execute if score @s 1BD.Combo matches 1 anchored eyes run function asset:artifact/3240.reapers_scythe/melee/vfx/1
    execute if score @s 1BD.Combo matches 2 anchored eyes run function asset:artifact/3240.reapers_scythe/melee/vfx/2
    execute if score @s 1BD.Combo matches 3 anchored eyes run function asset:artifact/3240.reapers_scythe/melee/vfx/3

# コンボフィニッシュでは追加の斬撃を発生
    execute if score @s 1BD.Combo matches 3 anchored eyes run function asset:artifact/3240.reapers_scythe/melee/summon_slash

# 効果音
    playsound item.trident.throw player @a ~ ~ ~ 1 0.6
    playsound minecraft:entity.glow_squid.squirt player @a ~ ~ ~ 1 2
    playsound entity.evoker.prepare_summon player @a ~ ~ ~ 1.2 1.8 0

# 演出
    # data modify storage api: Argument.ID set value 3215
    # execute store result storage api: Argument.FieldOverride.Count int 1 run random value 1..3
    # execute anchored eyes positioned ^ ^-0.2 ^-0.5 run function api:object/summon