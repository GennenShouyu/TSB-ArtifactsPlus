#> asset:object/3219.arrow_of_firebolt_thrower/pre_hit/arrow
#
# 継承先などから実行される処理
#
# @within asset:object/3219.arrow_of_firebolt_thrower/pre_hit/

# 連鎖カウントを増加
    scoreboard players add #global 1B4.ChainCount 1

# 5方向に矢を飛ばす
    execute rotated ~36 ~ positioned ^ ^1 ^1 run function asset:object/3219.arrow_of_firebolt_thrower/pre_hit/summon_arrow
    execute rotated ~108 ~ positioned ^ ^1 ^1 run function asset:object/3219.arrow_of_firebolt_thrower/pre_hit/summon_arrow
    execute rotated ~180 ~ positioned ^ ^1 ^1 run function asset:object/3219.arrow_of_firebolt_thrower/pre_hit/summon_arrow
    execute rotated ~252 ~ positioned ^ ^1 ^1 run function asset:object/3219.arrow_of_firebolt_thrower/pre_hit/summon_arrow
    execute rotated ~324 ~ positioned ^ ^1 ^1 run function asset:object/3219.arrow_of_firebolt_thrower/pre_hit/summon_arrow