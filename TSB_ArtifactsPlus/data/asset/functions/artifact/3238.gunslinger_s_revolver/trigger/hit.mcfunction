#> asset:artifact/3238.gunslinger_s_revolver/trigger/hit
#
#
#
# @within function asset:artifact/3238.gunslinger_s_revolver/trigger/bullet

# 一定の距離から距離減衰するための距離(適正距離をメートル*2で指定)
    scoreboard players set $Appropriate_Distance Temporary 16
# 最低ダメージ保証
    scoreboard players set $MinDamage Temporary 50

# 演出
    execute at @e[tag=LandingTarget,limit=1] run particle minecraft:block redstone_block ~ ~1.2 ~ 0.4 0.4 0.4 0 4

# エフェクトとダメージ
    function asset:artifact/3238.gunslinger_s_revolver/trigger/effect_and_damage

# 着弾タグを消す
    tag @e[tag=LandingTarget] remove LandingTarget
