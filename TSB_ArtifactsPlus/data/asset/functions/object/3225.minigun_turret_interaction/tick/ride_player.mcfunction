#> asset:object/3225.minigun_turret_interaction/tick/ride_player
#
#
#
# @within asset:object/3225.minigun_turret_interaction/tick

# tagの付与
    tag @s add 3275.Ride

# インタラクトしたプレイヤーを乗せる
    ride @s mount @e[tag=3275.RideTarget,sort=nearest,limit=1]