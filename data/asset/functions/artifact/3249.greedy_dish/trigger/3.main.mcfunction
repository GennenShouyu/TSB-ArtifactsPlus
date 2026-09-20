#> asset:artifact/3249.greedy_dish/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3249.greedy_dish/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $Random

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 効果音
    playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 1

# 疑似乱数取得
    execute store result score $Random Temporary run random value 0..41

# 番号に応じて食べ物を与える
    execute if score $Random Temporary matches 0 run give @s bread 1
    execute if score $Random Temporary matches 1 run give @s cooked_chicken 1
    execute if score $Random Temporary matches 2 run give @s cooked_porkchop 1
    execute if score $Random Temporary matches 3 run give @s cooked_mutton 1
    execute if score $Random Temporary matches 4 run give @s cooked_beef 1
    execute if score $Random Temporary matches 5 run give @s cooked_rabbit 1
    execute if score $Random Temporary matches 6 run give @s cooked_salmon 1
    execute if score $Random Temporary matches 7 run give @s cooked_cod 1
    execute if score $Random Temporary matches 8 run give @s beetroot_soup 1
    execute if score $Random Temporary matches 9 run give @s mushroom_stew 1
    execute if score $Random Temporary matches 10 run give @s rabbit_stew 1
    execute if score $Random Temporary matches 11 run give @s potato 1
    execute if score $Random Temporary matches 12 run give @s baked_potato 1
    execute if score $Random Temporary matches 13 run give @s carrot 1
    execute if score $Random Temporary matches 14 run give @s apple 1
    execute if score $Random Temporary matches 15 run give @s pumpkin_pie 1
    execute if score $Random Temporary matches 16 run give @s cookie 1
    execute if score $Random Temporary matches 17 run give @s cake 1
    execute if score $Random Temporary matches 18 run give @s sweet_berries 1
    execute if score $Random Temporary matches 19 run give @s honey_bottle 1
    execute if score $Random Temporary matches 20 run give @s glow_berries 1
    execute if score $Random Temporary matches 21 run give @s melon_slice 1
    execute if score $Random Temporary matches 22 run give @s golden_carrot 1
    execute if score $Random Temporary matches 23 run give @s golden_apple 1
    execute if score $Random Temporary matches 24 run give @s enchanted_golden_apple 1
    execute if score $Random Temporary matches 25 run function debug:artifact/give.m {ID:43}
    execute if score $Random Temporary matches 26 run function debug:artifact/give.m {ID:105}
    execute if score $Random Temporary matches 27 run function debug:artifact/give.m {ID:185}
    execute if score $Random Temporary matches 28 run function debug:artifact/give.m {ID:217}
    execute if score $Random Temporary matches 29 run function debug:artifact/give.m {ID:245}
    execute if score $Random Temporary matches 30 run function debug:artifact/give.m {ID:272}
    execute if score $Random Temporary matches 31 run function debug:artifact/give.m {ID:437}
    execute if score $Random Temporary matches 32 run function debug:artifact/give.m {ID:454}
    execute if score $Random Temporary matches 33 run function debug:artifact/give.m {ID:455}
    execute if score $Random Temporary matches 34 run function debug:artifact/give.m {ID:1104}
    execute if score $Random Temporary matches 35 run function debug:artifact/give.m {ID:1106}
    execute if score $Random Temporary matches 36 run function debug:artifact/give.m {ID:1114}
    execute if score $Random Temporary matches 37 run function debug:artifact/give.m {ID:1115}
    execute if score $Random Temporary matches 38 run function debug:artifact/give.m {ID:1116}
    execute if score $Random Temporary matches 39 run function debug:artifact/give.m {ID:1117}
    execute if score $Random Temporary matches 40 run function debug:artifact/give.m {ID:3211}
    execute if score $Random Temporary matches 41 run function debug:artifact/give.m {ID:3247}

 # リセット
    scoreboard players reset $Random Temporary

