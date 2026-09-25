# パーティクル
    execute positioned ~ ~1 ~ run function asset:artifact/3261.the_elder_wand/trigger/heal/vfx
    playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 2 1.2

# 回復
    data modify storage api: Argument.Heal set value 6.0f
    function api:heal/modifier
    execute as @a[distance=..4.5,sort=nearest,limit=6] run function api:heal/
# リセット
    function api:heal/reset
