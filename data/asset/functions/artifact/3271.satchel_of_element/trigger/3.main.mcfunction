#> asset:artifact/3271.satchel_of_element/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3271.satchel_of_element/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $Random

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 効果音
    playsound ogg:random.levelup neutral @a ~ ~ ~ 1.5 1.5
    playsound minecraft:block.note_block.xylophone neutral @a ~ ~ ~ 1.5 1

# いずれかの属性の攻撃
    # 疑似乱数取得
        execute store result score $Random Temporary run random value 0..2
    # 増加
        execute if score $Random Temporary matches 0 at @e[type=#lib:living,tag=Enemy,type=!player,tag=!Uninterferable,distance=..10,limit=7] run function asset:artifact/3271.satchel_of_element/trigger/attack/fire
        execute if score $Random Temporary matches 1 at @e[type=#lib:living,tag=Enemy,type=!player,tag=!Uninterferable,distance=..10,limit=7] run function asset:artifact/3271.satchel_of_element/trigger/attack/water
        execute if score $Random Temporary matches 2 at @e[type=#lib:living,tag=Enemy,type=!player,tag=!Uninterferable,distance=..10,limit=7] run function asset:artifact/3271.satchel_of_element/trigger/attack/thunder
    # リセット
        scoreboard players reset $Random Temporary
