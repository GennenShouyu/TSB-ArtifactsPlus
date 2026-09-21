#> asset:artifact/3226.sunk_heart/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/3226.sunk_heart/trigger/dis_equip/

#> prv
# @private
    #declare score_holder $1A2.ItemCount

# まだ持ってるか確認する
    execute store result score $1A2.ItemCount Temporary if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:3226}}}]
# なければ削除
    execute if score $1A2.ItemCount Temporary matches ..0 run function asset:artifact/3226.sunk_heart/trigger/dis_equip/not_in_hotbar
# リセット
    scoreboard players reset $1A2.ItemCount Temporary
