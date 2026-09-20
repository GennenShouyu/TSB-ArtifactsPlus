#> asset:artifact/3225.void_bayonet_sword/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3225.void_bayonet_sword/trigger/2.check_condition

#> private
# @private
    #declare score_holder $UseCount

# 使用回数を取る
    execute store result score $UseCount Temporary run data get storage asset:context Items.mainhand.tag.TSB.RemainingCount

# 最終段の使用ならクールタイムを延長
    execute if score $UseCount Temporary matches 1 run data modify storage asset:artifact TypeCooldown.Duration set value 30

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# スコアを戻す
    scoreboard players set @s 1A1.Time 1

# 待機時間内でもう一度発動した場合に新しい行動を取るように、ターンを上げる
    scoreboard players add @s 1A1.Turn 1

# デバッグ、Turn固定
    #scoreboard players set @s 1A1.Turn 1

# 待機時間を設定する
    scoreboard players set @s 1A1.WaitingTime 25

# スケジュールで実行させる
    schedule function asset:artifact/3225.void_bayonet_sword/trigger/schedule_loop 1t replace

# 残り回数が1回の時発動した場合
    execute unless data storage asset:context Items.mainhand.id run data modify storage api: Argument.ID set value 3224
    execute unless data storage asset:context Items.mainhand.id run function api:artifact/replace/from_id

# リセット
    scoreboard players reset $UseCount Temporary
