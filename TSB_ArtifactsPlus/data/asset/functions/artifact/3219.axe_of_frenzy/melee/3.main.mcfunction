#> asset:artifact/3219.axe_of_frenzy/melee/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3219.axe_of_frenzy/melee/2.check_condition

#> Private
# @private
    #declare score_holder $Random

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# チャージバフ取得
    data modify storage api: Argument.ID set value 4208
    function api:entity/mob/effect/get/from_id

# スタックをスコアへ
    execute store result score $1A0.Stack Temporary run data get storage api: Return.Effect.Stack

#カウント用
    execute if score $1A0.Stack Temporary matches ..4 run scoreboard players set @s 1A0.Count 1
    execute if score $1A0.Stack Temporary matches 5.. if score $1A0.Stack Temporary matches ..9 run scoreboard players set @s 1A0.Count 11
    execute if score $1A0.Stack Temporary matches 10 run scoreboard players set @s 1A0.Count 21

# ターゲット指定
    execute as @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..10] run tag @s add 1A0.Target

# スケジュールループ
    function asset:artifact/3219.axe_of_frenzy/melee/schedule_loop