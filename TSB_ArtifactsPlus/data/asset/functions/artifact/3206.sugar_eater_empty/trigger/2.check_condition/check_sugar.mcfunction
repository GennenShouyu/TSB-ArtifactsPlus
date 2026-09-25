#> asset:artifact/3206.sugar_eater_empty/trigger/2.check_condition/check_bamboo
#
# 竹を所持しているかチェック
#
# @within function asset:artifact/3206.sugar_eater_empty/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $Count

# 0個ならCanUsedを削除
    execute store result score $Count Temporary run clear @s sugar 0
    execute if score $Count Temporary matches 0 run tag @s remove CanUsed
    execute if score $Count Temporary matches 0 run function lib:message/artifact/dont_have_require_items
    scoreboard players reset $Count Temporary
