#> asset:artifact/3246.a.g.i/trigger/vfx
#
#
#
# @within function asset:artifact/3246.a.g.i/trigger/3.main

# 演出用
    particle dust 1 1 0.4 1.3 ~ ~4 ~ 0.25 3 0.25 0 100 normal @a
    particle dust 1 1 0.8 1.3 ~ ~4 ~ 0.25 3 0.25 0 100 normal @a
    # particle firework ~ ~ ~ 0 0 0 0.3 80 normal @a
    particle end_rod ~ ~6 ~ 0.4 5 0.4 0 20 normal @a
    particle flash ~ ~ ~ 0 0 0 0 1 normal @a
    playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 0.4 1.5
    playsound ogg:block.respawn_anchor.deplete1 player @a ~ ~ ~ 0.7 2
    playsound ogg:block.respawn_anchor.deplete1 player @a ~ ~ ~ 0.4 1.5
    playsound tsb_sounds:blaster2 player @a ~ ~ ~ 0.3 1.5
