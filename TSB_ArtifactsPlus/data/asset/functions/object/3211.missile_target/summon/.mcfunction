#> asset:object/3211.missile_target/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/3211/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit"],teleport_duration:1,item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:22003}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.625f,0.625f,0.625f],translation:[0f,0f,0f]}}
