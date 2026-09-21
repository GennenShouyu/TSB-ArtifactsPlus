#> asset:effect/4223.six_direction_good_handling/barrier/add
#
#
#
# @within function
#   asset:effect/4223.six_direction_good_handling/given/
#   asset:effect/4223.six_direction_good_handling/re-given/

# バリア設定
    data modify storage api: Argument.Amount set from storage asset:context this.Barrier
    data modify storage api: Argument.UUID set value [I;1,3,4223,0]
    data modify storage api: Argument.Priority set value 1
    data modify storage api: Argument.WipedCallback set value "asset:effect/4223.six_direction_good_handling/barrier/break"
    function api:entity/player/absorption/add
