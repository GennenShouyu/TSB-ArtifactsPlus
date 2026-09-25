execute as @a[tag=nbs_artifact] run scoreboard players operation @s nbs_artifact += speed nbs_artifact
execute as @a[tag=nbs_artifact] at @s run function asset:artifact/3245.double_edged_sword/trigger/sounds/tree/0_63

execute if entity @e[tag=1B9.Target] run schedule function asset:artifact/3245.double_edged_sword/trigger/sounds/tick 1t replace