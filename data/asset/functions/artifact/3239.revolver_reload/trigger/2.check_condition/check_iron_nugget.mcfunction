#> asset:artifact/3239.revolver_reload/trigger/2.check_condition/check_iron_nugget
#
# 竹を所持しているかチェック
#
# @within function asset:artifact/3239.revolver_reload/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $Count

# 5個以下ならCanUsedを削除
    execute store result score $Count Temporary run clear @s iron_nugget 0
    execute if score $Count Temporary matches ..5 run tag @s remove CanUsed
    execute if score $Count Temporary matches ..5 run function lib:message/artifact/dont_have_require_items
    scoreboard players reset $Count Temporary
