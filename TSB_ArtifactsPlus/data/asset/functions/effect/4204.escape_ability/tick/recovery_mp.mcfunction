#> asset:effect/4204.escape_ability/tick/recovery_mp
#
#
#
# @within function asset:effect/4204.escape_ability/tick/

#> Private
# @private
#declare score_holder $UserID

# MPを1回復
    data modify storage api: Argument.Fluctuation set value 4
    function api:mp/fluctuation

# リセット
    scoreboard players reset $UserID Temporary
