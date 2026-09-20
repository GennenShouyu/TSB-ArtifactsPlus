#> asset:effect/4220.time_acceleration/tick/deal_damage
#
#
#
# @within function asset:effect/4220.time_acceleration/tick/

#> Private
# @private
#declare score_holder $UserID

# MPを7回復
    data modify storage api: Argument.Fluctuation set value 7
    function api:mp/fluctuation

# リセット
    scoreboard players reset $UserID Temporary
