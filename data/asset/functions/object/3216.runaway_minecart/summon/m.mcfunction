#> asset:object/3216.runaway_minecart/summon/m
#
#
#
# @input args
#   Rotation: [float] @ 2
# @within function asset:object/3216.runaway_minecart/summon/

$summon item_display ~ ~ ~ {Tags:["ObjectInit"],item_display:"thirdperson_righthand",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:22007}},Rotation:$(Rotation),teleport_duration:1}
