#> asset:effect/4210.mirage_of_memory/tick/deal_damage
#
#
#
# @within function asset:effect/4210.mirage_of_memory/tick/

#> Private
# @private
#declare score_holder $UserID

# 演出
    particle minecraft:flame ~ ~1 ~ 0.4 1.0 0.4 0 40
    playsound block.fire.ambient player @a ~ ~ ~ 1 1
    playsound entity.player.hurt_on_fire player @a ~ ~ ~ 1 1

# 最大体力の1.5%分のダメージを受ける
    function api:modifier/max_health/get
    execute store result storage api: Argument.Damage double 0.015 run data get storage api: Return.MaxHealth
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは消し炭となった","with":[{"selector":"@s"}]}]']
    function api:damage/modifier
    function api:damage/
    function api:damage/reset

# MPを4回復
    data modify storage api: Argument.Fluctuation set value 4
    function api:mp/fluctuation

# リセット
    scoreboard players reset $UserID Temporary
