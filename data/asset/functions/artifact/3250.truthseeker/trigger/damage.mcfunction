#> asset:artifact/3250.truthseeker/trigger/damage
#
# 攻撃判定に入った敵にダメージを与える
#
# @within function asset:artifact/3250.truthseeker/trigger/3.main

# タグ付与
    execute unless score @s 1B1.Combo matches 3 positioned ^ ^ ^1 run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..3] add 1B1.Hit
    execute if score @s 1B1.Combo matches 3 positioned ^ ^ ^2 run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..5,sort=nearest,limit=1] add 1B1.Hit
    execute as @e[type=#lib:living,type=!player,tag=1B1.Hit,tag=!Uninterferable,distance=..3] positioned ^ ^ ^-100 run tag @s[type=#lib:living,type=!player,tag=1B1.Hit,tag=!Uninterferable,distance=..100] remove 1B1.Hit

# 引数の設定
    execute store result storage api: Argument.Damage float 1 run random value 235..300
# 刺突攻撃ならダメージ増加
    execute if score @s 1B1.Combo matches 3 store result storage api: Argument.Damage float 1 run random value 580..730
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
# 補正functionを実行
    execute as @p[tag=this] run function api:damage/modifier
# ダメージ実行
    execute as @e[type=#lib:living,type=!player,tag=1B1.Hit,tag=!Uninterferable,distance=..3] run function api:damage/
# リセット
    function api:damage/reset


# ノクバ耐性を考慮して吹っ飛ばす
    data modify storage lib: Argument.VectorMagnitude set value -0.7
    data modify storage lib: Argument.KnockbackResist set value true
    execute as @e[type=#lib:living,type=!player,tag=1B1.Hit,tag=!Uninterferable,distance=..3] at @s facing entity @p[tag=this] feet rotated ~ ~5 run function lib:motion/
    data remove storage lib: Argument

# リセット
    tag @e[type=#lib:living,type=!player,tag=1B1.Hit,tag=!Uninterferable,distance=..3] remove 1B1.Hit
