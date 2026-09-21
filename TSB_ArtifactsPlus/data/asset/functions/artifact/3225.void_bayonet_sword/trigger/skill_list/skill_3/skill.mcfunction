#> asset:artifact/3225.void_bayonet_sword/trigger/skill_list/skill_5/skill
#
#
#
# @within function asset:artifact/3225.void_bayonet_sword/trigger/skill_list/skill_active

# スコアを増やす
    execute if score @s 1A1.Time matches 1.. run scoreboard players add @s 1A1.Time 1

# 剣を振る
    execute if score @s 1A1.Time matches 2 anchored eyes run function asset:artifact/3225.void_bayonet_sword/trigger/particle/particle5
    execute if score @s 1A1.Time matches 2 run function asset:artifact/3225.void_bayonet_sword/trigger/slash

    execute if score @s 1A1.Time matches 3 anchored eyes positioned ^-0.2 ^ ^ run function asset:artifact/3225.void_bayonet_sword/trigger/particle/particle7
    execute if score @s 1A1.Time matches 3 run function asset:artifact/3225.void_bayonet_sword/trigger/slash

    execute if score @s 1A1.Time matches 4 anchored eyes positioned ^-0.2 ^ ^ run function asset:artifact/3225.void_bayonet_sword/trigger/particle/particle6
    execute if score @s 1A1.Time matches 4 run function asset:artifact/3225.void_bayonet_sword/trigger/slash

    execute if score @s 1A1.Time matches 5 anchored eyes positioned ^-0.2 ^0.2 ^ run function asset:artifact/3225.void_bayonet_sword/trigger/particle/particle9
    execute if score @s 1A1.Time matches 5 run function asset:artifact/3225.void_bayonet_sword/trigger/slash

    execute if score @s 1A1.Time matches 6 anchored eyes positioned ^-0.6 ^-0.2 ^ run function asset:artifact/3225.void_bayonet_sword/trigger/particle/particle8
    execute if score @s 1A1.Time matches 6 run function asset:artifact/3225.void_bayonet_sword/trigger/slash

    execute if score @s 1A1.Time matches 8 anchored eyes run function asset:artifact/3225.void_bayonet_sword/trigger/particle/particle1
    execute if score @s 1A1.Time matches 8 anchored eyes run function asset:artifact/3225.void_bayonet_sword/trigger/particle/particle2
    execute if score @s 1A1.Time matches 8 anchored eyes run function asset:artifact/3225.void_bayonet_sword/trigger/particle/particle3
    execute if score @s 1A1.Time matches 8 run function asset:artifact/3225.void_bayonet_sword/trigger/slash
# スコアを消す
    execute if score @s 1A1.Time matches 10 run function asset:artifact/3225.void_bayonet_sword/trigger/reset