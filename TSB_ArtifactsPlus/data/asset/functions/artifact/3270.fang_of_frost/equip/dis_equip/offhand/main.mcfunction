#> asset:artifact/3270.fang_of_frost/equip/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/3270.fang_of_frost/equip/dis_equip/

# チャージを-1
    scoreboard players remove @s 1B6.Charge 1

# 念のためリミッター
    execute if score @s 1B6.Charge matches ..0 run scoreboard players set @s 1B6.Charge 0