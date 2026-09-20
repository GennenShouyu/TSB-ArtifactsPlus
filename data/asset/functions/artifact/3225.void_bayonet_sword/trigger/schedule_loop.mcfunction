#> asset:artifact/3225.void_bayonet_sword/trigger/schedule_loop
#
# 常に実行されている
#
# @within function
#   asset:artifact/3225.void_bayonet_sword/trigger/3.main
#   asset:artifact/3225.void_bayonet_sword/trigger/schedule_loop
#   asset:artifact/3225.void_bayonet_sword/trigger/rejoin_process

# Timeがある状態ならスキルを発動している
    execute as @a[scores={1A1.Time=1..}] at @s run function asset:artifact/3225.void_bayonet_sword/trigger/skill_list/skill_active
# WaitTimeをへらす
    scoreboard players remove @a[scores={1A1.WaitingTime=1..}] 1A1.WaitingTime 1

# WaitTimeがなくなったらresetを実行する
    execute if entity @a[scores={1A1.WaitingTime=0},limit=1] as @a[scores={1A1.WaitingTime=0}] at @s run function asset:artifact/3225.void_bayonet_sword/trigger/reset
# ループさせる
    execute if entity @a[scores={1A1.WaitingTime=1..},limit=1] run schedule function asset:artifact/3225.void_bayonet_sword/trigger/schedule_loop 1t replace