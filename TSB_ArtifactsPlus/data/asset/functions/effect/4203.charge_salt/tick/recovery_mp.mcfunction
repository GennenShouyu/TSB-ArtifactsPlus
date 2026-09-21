#> asset:effect/4203.charge_salt/tick/deal_damage
#
#
#
# @within function asset:effect/4203.charge_salt/tick/

#> Private
# @private
#declare score_holder $UserID

# MPを2回復
    data modify storage api: Argument.Fluctuation set value 2
    function api:mp/fluctuation

# リセット
    scoreboard players reset $UserID Temporary
