#> asset:artifact/3267.chill_gale_knife/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3267.chill_gale_knife/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $Random

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand
    
# ここから先は神器側の効果の処理を書く

# 効果音
    playsound entity.wind_charge.wind_burst player @a ~ ~ ~ 1 1

# ダメージ
    data modify storage api: Argument.Damage set value 120
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,distance=..10,limit=1] run function api:damage/
    function api:damage/reset

    execute as @e[type=#lib:living,tag=Victim,distance=..10,limit=1] run effect give @s slowness 3 2 true

# vfx
    # 疑似乱数取得
        execute store result score $Random Temporary run random value 0..2
    execute if score $Random Temporary matches 0 anchored eyes run function asset:artifact/3267.chill_gale_knife/trigger/vfx/slash1
    execute if score $Random Temporary matches 1 anchored eyes run function asset:artifact/3267.chill_gale_knife/trigger/vfx/slash2
    execute if score $Random Temporary matches 2 anchored eyes run function asset:artifact/3267.chill_gale_knife/trigger/vfx/slash3
