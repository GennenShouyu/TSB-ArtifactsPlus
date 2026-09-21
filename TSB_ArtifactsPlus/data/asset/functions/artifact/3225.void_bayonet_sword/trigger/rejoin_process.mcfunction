#> asset:artifact/3225.void_bayonet_sword/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin
# ループ
    execute if entity @a[scores={1A1.WaitingTime=1..},limit=1] run schedule function asset:artifact/3225.void_bayonet_sword/trigger/schedule_loop 1t replace