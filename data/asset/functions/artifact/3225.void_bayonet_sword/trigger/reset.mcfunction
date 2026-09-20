#> asset:artifact/3225.void_bayonet_sword/trigger/reset
#
# リセットする。
#
# @within function asset:artifact/3225.void_bayonet_sword/trigger/**

# スコアを戻す
    scoreboard players reset @s 1A1.Time
    scoreboard players reset @s 1A1.Turn
    scoreboard players reset @s 1A1.WaitingTime

# ちょっとした演出
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2