#> asset:artifact/3250.truthseeker/trigger/vfx/slash1
#
#
#
# @within function asset:artifact/3250.truthseeker/trigger/3.main

# 演出
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 1
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 0.4
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 1.5
    playsound minecraft:block.amethyst_block.hit player @a ~ ~ ~ 2 1
    playsound minecraft:block.bell.use player @a ~ ~ ~ 3 2

# 斬撃
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Color:50175,Frames:[22006,22004,22005],Scale:[4f,4f,0.1f],Transformation:{left_rotation:[0.561f,-0.43f,0.43f,0.561f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute positioned ^ ^ ^3 positioned ~ ~-0.5 ~ run function api:object/summon
