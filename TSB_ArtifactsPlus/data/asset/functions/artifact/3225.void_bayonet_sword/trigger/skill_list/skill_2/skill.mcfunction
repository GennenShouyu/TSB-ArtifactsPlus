#> asset:artifact/3225.void_bayonet_sword/trigger/skill_list/skill_2/skill
#
#
#
# @within function asset:artifact/3225.void_bayonet_sword/trigger/skill_list/skill_active

# 剣を振る
    execute anchored eyes run function asset:artifact/3225.void_bayonet_sword/trigger/particle/particle2
    function asset:artifact/3225.void_bayonet_sword/trigger/slash
# スコアを消す
    scoreboard players reset @s 1A1.Time