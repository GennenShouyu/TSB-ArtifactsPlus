
# 演出
    particle minecraft:campfire_cosy_smoke ~ ~-0.2 ~ 0.1 0.1 0.1 0 1 force

# 向きを変える
    $execute if entity @e[tag=3231.Target_$(1A7_var),distance=00..10] facing entity @e[tag=3231.Target_$(1A7_var),distance=..10,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-0200 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~ ~
    $execute if entity @e[tag=3231.Target_$(1A7_var),distance=10..] facing entity @e[tag=3231.Target_$(1A7_var),distance=10..,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-1500 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~ ~

# 速度を変える
    $execute if entity @e[tag=3231.Target_$(1A7_var),distance=00..10] run data modify storage asset:context this.Speed set value 2
    $execute if entity @e[tag=3231.Target_$(1A7_var),distance=10..] run data modify storage asset:context this.Speed set value 1

# super 呼び出し
    execute at @s run function asset:object/super.tick