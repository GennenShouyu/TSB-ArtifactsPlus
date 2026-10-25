#> asset:object/3223.minigun_turret_legs/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/3223/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 降りた場合は乗せる
    ride @a[tag=3275.Ride,sort=nearest,limit=1] mount @s

# 向きの変更
    data modify entity @s Rotation[0] set from entity @e[tag=3275.Ride,sort=nearest,limit=1] Rotation[0]

# 操縦者タグの削除・神器返却用タグの付与
    execute if score @s General.Object.Tick matches 180.. run tag @a[sort=nearest,limit=1] add 3275.TurretReturn
    execute if score @s General.Object.Tick matches 180.. run tag @a[tag=3275.Ride,distance=..3,sort=nearest,limit=1] remove 3275.Ride
# 消滅処理
    kill @s[scores={General.Object.Tick=180..}]

# 乗っているプレイヤーに誤って神器返却用タグが付与されてしまった場合は削除
    tag @a[tag=3275.Ride,sort=nearest,limit=1] remove 3275.TurretReturn
