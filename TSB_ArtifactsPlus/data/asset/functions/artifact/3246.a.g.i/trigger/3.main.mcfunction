#> asset:artifact/3246.a.g.i/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3246.a.g.i/trigger/2.check_condition
#> Private
# @private
    #declare score_holder $MPPer

# 敵にダメージ
    execute store result storage api: Argument.Damage float 1 run random value 300..500

# MPが50%以上ならレンジを狭める
    function api:entity/player/get_mp_per
    execute store result score $MPPer Temporary run data get storage api: Return.MPPer 100
    execute if score $MPPer Temporary matches 49.. run execute store result storage api: Argument.Damage float 1 run random value 350..500

# MPが100%なら確定500ダメージ
    execute if score $MPPer Temporary matches 100 run data modify storage api: Argument.Damage set value 500.0f

    scoreboard players reset $MPPer Temporary

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/offhand

# ここから先は神器側の効果の処理を書く
# 演出
    execute at @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..9,sort=nearest,limit=1] positioned ~ ~1 ~ run function asset:artifact/3246.a.g.i/trigger/vfx

    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function api:damage/modifier
# ダメージを与える
    execute as @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..9,sort=nearest,limit=1] run function api:damage/
# リセット
    function api:damage/reset
