# X、Yの回転角度を決定
    execute store result storage asset:context Dx int 1 run random value -15..15
    execute store result storage asset:context Dy int 1 run random value -25..25
    function asset:object/3221.plasma/tick/rotate.m with storage asset:context

# 効果音
    playsound minecraft:item.brush.brushing.gravel player @a ~ ~ ~ 2 1
    playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 0.2 2