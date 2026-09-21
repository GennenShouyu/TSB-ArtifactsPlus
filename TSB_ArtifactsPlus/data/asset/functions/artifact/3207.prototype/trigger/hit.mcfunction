#> asset:artifact/3207.prototype/trigger/hit
#
#
#
# @within function asset:artifact/3207.prototype/trigger/bullet

# 一定の距離から距離減衰するための距離(適正距離をメートル*2で指定)
    scoreboard players set $Appropriate_Distance Temporary 16
# 最低ダメージ保証
    scoreboard players set $MinDamage Temporary 480

# 演出
    execute at @e[tag=LandingTarget,limit=1] run particle minecraft:block redstone_block ~ ~1.2 ~ 0.4 0.4 0.4 0 4
# ダメージ設定
    # ダメージ
        scoreboard players add $Damage Temporary 600
    # 属性
        data modify storage api: Argument.AttackType set value "Magic"
        data modify storage api: Argument.ElementType set value "None"
    # もし、適正距離じゃなかった場合、距離-適正距離=減少ダメージにする
        execute if score $Distance_Damping Temporary >= $Appropriate_Distance Temporary run function asset:artifact/3207.prototype/trigger/damage_attenuation
    # ダメージ量確定
        execute store result storage api: Argument.Damage float 1 run scoreboard players get $Damage Temporary
    # ダメージ
        function api:damage/modifier
        execute as @e[tag=LandingTarget] run function api:damage/
# リセット
    function api:damage/reset

# 多段ヒット防止のために被弾済みタグを付与
    tag @e[tag=LandingTarget] add already_hit

# タグを削除
    tag @e[tag=LandingTarget] remove LandingTarget
