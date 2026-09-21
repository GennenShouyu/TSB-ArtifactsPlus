#> asset:object/3202.thunderclouds/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/3202/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,4f,0f],scale:[5f,5f,5f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:22001}}}
