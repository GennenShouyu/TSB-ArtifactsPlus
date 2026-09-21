#> asset:artifact/3225.void_bayonet_sword/trigger/skill_list/skill_active
#
#
#
# @within function asset:artifact/3225.void_bayonet_sword/trigger/schedule_loop

# スキル1(1度しか実行しない)
    execute if score @s 1A1.Turn matches 1 run function asset:artifact/3225.void_bayonet_sword/trigger/skill_list/skill_1/skill
# スキル2(1度しか実行しない)
    execute if score @s 1A1.Turn matches 2 run function asset:artifact/3225.void_bayonet_sword/trigger/skill_list/skill_2/skill
# スキル3
    execute if score @s 1A1.Turn matches 3 run function asset:artifact/3225.void_bayonet_sword/trigger/skill_list/skill_3/skill