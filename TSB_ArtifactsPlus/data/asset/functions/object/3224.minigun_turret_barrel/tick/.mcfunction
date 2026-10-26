#> asset:object/3224.minigun_turret_barrel/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/3224/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 横方向には常に回転させる
    execute as @a[tag=3275.Ride,sort=nearest,limit=1] at @s anchored eyes rotated ~ 0 run tp @e[tag=3275.Barrel,sort=nearest,limit=1] ^ ^-1 ^1.2 ~ ~
# 回転（ある程度の角度制限あり）
    execute if entity @a[tag=3275.Ride,x_rotation=-90..10] as @a[tag=3275.Ride,sort=nearest,limit=1] at @s anchored eyes rotated ~ ~ run tp @e[tag=3275.Barrel,sort=nearest,limit=1] ^ ^-1 ^1.2 ~ ~

# 消滅処理
    kill @s[scores={General.Object.Tick=400..}]
