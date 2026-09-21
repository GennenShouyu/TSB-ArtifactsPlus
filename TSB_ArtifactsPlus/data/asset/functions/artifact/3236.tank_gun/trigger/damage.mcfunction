#> asset:artifact/3236.tank_gun/trigger/damage
#
#
#
# @within function asset:artifact/3236.tank_gun/trigger/hit
#> Private
# @private
    #declare tag 3236.Target
    #declare score_holder $UserID

# 演出
    particle flash ~ ~ ~ 0.4 0.4 0.4 0 10 normal @a
    particle smoke ~ ~ ~ 0 0 0 0.15 40 normal @a
    particle smoke ~ ~ ~ 0 0 0 0.30 40 normal @a
    particle explosion ~ ~ ~ 4 4 4 0 50 normal @a
    playsound entity.generic.explode neutral @a ~ ~ ~ 0.7 1

# 対象選定
# 着弾時にdistanceだとワンチャンすぐ近くの対称に当たらない可能性があるのでdxyzでも判定しておく
    execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,dx=0] add 3236.Target
    tag @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..5] add 3236.Target

# ダメージ
    data modify storage api: Argument.Damage set value 3200
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living,tag=3236.Target,tag=!Uninterferable,distance=..15] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary
    tag @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..15] remove 3236.Target


# 帯電クリーパー（即爆発）を召喚
    execute positioned ~ ~1 ~ run summon creeper ~ ~ ~ {powered:1b, Fuse:0s}
    execute positioned ~ ~1 ~ run summon creeper ~3 ~ ~ {powered:1b, Fuse:0s}
    execute positioned ~ ~1 ~ run summon creeper ~-3 ~ ~ {powered:1b, Fuse:0s}
    execute positioned ~ ~1 ~ run summon creeper ~ ~ ~3 {powered:1b, Fuse:0s}
    execute positioned ~ ~1 ~ run summon creeper ~ ~ ~-3 {powered:1b, Fuse:0s}
    execute positioned ~ ~1 ~ run summon creeper ~ ~3 ~ {powered:1b, Fuse:0s}
    execute positioned ~ ~1 ~ run summon creeper ~ ~-3 ~ {powered:1b, Fuse:0s}

