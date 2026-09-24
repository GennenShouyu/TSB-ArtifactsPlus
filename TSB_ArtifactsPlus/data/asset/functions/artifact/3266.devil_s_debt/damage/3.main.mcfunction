#> asset:artifact/3266.devil_s_debt/damage/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3266.devil_s_debt/damage/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    # function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# クールタイム用スコアのリセット
    execute if score @s 1B3.Count matches ..-1 run scoreboard players set @s 1B3.Count 20

# スケジュールループ
    schedule function asset:artifact/3266.devil_s_debt/damage/schedule_loop 1t replace