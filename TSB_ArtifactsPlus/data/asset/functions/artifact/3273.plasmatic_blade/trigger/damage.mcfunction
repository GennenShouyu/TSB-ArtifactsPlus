#> asset:artifact/3273.plasmatic_blade/trigger/damage
#
#
#
# @within function
#   asset:artifact/3273.plasmatic_blade/trigger/3.main
#   asset:artifact/3273.plasmatic_blade/trigger/rapid_slash

# タグ付与
    execute positioned ^ ^ ^1 run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..3] add 1BB.Hit
    execute as @e[type=#lib:living,type=!player,tag=1BB.Hit,tag=!Uninterferable,distance=..3] positioned ^ ^ ^-100 run tag @s[type=#lib:living,type=!player,tag=1BB.Hit,tag=!Uninterferable,distance=..100] remove 1BB.Hit

# 引数の設定
    execute store result storage api: Argument.Damage float 1 run random value 150..225
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"

# 補正functionを実行
    function api:damage/modifier

# ダメージ実行
    execute as @e[type=#lib:living,type=!player,tag=1BB.Hit,tag=!Uninterferable,distance=..16] run function api:damage/

# リセット
    function api:damage/reset

# ノクバ耐性を考慮して吹っ飛ばす
    data modify storage lib: Argument.VectorMagnitude set value -0.4
    data modify storage lib: Argument.KnockbackResist set value true
    execute as @e[type=#lib:living,type=!player,tag=1BB.Hit,tag=!Uninterferable,distance=..16] at @s facing entity @p[tag=this] feet rotated ~ ~5 run function lib:motion/
    data remove storage lib: Argument

# エフェクト関連
    execute as @e[type=#lib:living,type=!player,tag=1BB.Hit,tag=!Uninterferable,distance=..16] at @s run function asset:artifact/3273.plasmatic_blade/trigger/effect

# リセット
    tag @e[type=#lib:living,type=!player,tag=1BB.Hit,distance=..16] remove 1BB.Hit
