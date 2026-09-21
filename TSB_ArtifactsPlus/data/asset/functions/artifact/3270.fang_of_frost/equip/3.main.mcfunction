#> asset:artifact/3270.fang_of_frost/equip/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3270.fang_of_frost/equip/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    # function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# チャージを+1
    scoreboard players add @s 1B6.Charge 1

# 念のためリミッター
    execute if score @s 1B6.Charge matches 2.. run scoreboard players set @s 1B6.Charge 2
