#> asset:artifact/3226.sunk_heart/trigger/dis_equip/not_in_hotbar
#
#
#
# @within function asset:artifact/3226.sunk_heart/trigger/dis_equip/main

# Tag削除
    tag @s remove 1A2.Equip

# MP消費
    data modify storage api: Argument.Fluctuation set value -90
    data modify storage api: Argument.DisableLog set value true
    function api:mp/fluctuation
