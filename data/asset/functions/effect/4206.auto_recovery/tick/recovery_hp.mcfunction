#> asset:effect/4206.auto_recovery/tick/deal_damage
#
#
#
# @within function asset:effect/4206.auto_recovery/tick/

#> Private
# @private
#declare score_holder $UserID

# HPを3回復
    data modify storage api: Argument.Heal set value 3
    function api:heal/modifier
    function api:heal/

# リセット
    scoreboard players reset $UserID Temporary
