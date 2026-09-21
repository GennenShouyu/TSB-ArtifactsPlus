#> asset:artifact/3268.harp_crossbow/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3268.harp_crossbow/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 消費
    clear @s arrow 1

# 効果音
    playsound block.note_block.harp player @a ~ ~ ~ 1 0.9
    playsound block.note_block.harp player @a ~ ~ ~ 1 0.7
    playsound block.note_block.harp player @a ~ ~ ~ 1 0.6
    playsound entity.arrow.shoot player @a ~ ~ ~ 1.0 1.0

# 矢を召喚する
    execute positioned ~ ~-0.2 ~ rotated ~0 ~ run function asset:artifact/3268.harp_crossbow/trigger/summon_arrow
    execute positioned ~ ~-0.2 ~ rotated ~7.5 ~ run function asset:artifact/3268.harp_crossbow/trigger/summon_arrow
    execute positioned ~ ~-0.2 ~ rotated ~15 ~ run function asset:artifact/3268.harp_crossbow/trigger/summon_arrow
    execute positioned ~ ~-0.2 ~ rotated ~-7.5 ~ run function asset:artifact/3268.harp_crossbow/trigger/summon_arrow
    execute positioned ~ ~-0.2 ~ rotated ~-15 ~ run function asset:artifact/3268.harp_crossbow/trigger/summon_arrow