#> asset:artifact/3276.minigun_turret_trigger/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3276.minigun_turret_trigger/trigger/2.check_condition
#> Private
# @private
    #declare score_holder $Random
    #declare tag SpreadMarker

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:item.totem.use player @a ~ ~ ~ 0.1 1
    playsound tsb_sounds:phalanx_shot player @a ~ ~ ~ 0.05 1

# 発砲
    function asset:artifact/3276.minigun_turret_trigger/trigger/shot
    function asset:artifact/3276.minigun_turret_trigger/trigger/shot