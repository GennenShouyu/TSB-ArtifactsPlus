#> asset:object/3206.thunderclouds_shot/tick/check_forward_block
#
#
#
# @within function asset:object/3206.thunderclouds_shot/tick/

# 前方に壁があればMovePerStepを0に
    $execute unless block ^ ^ ^$(MovePerStep) #lib:no_collision run data modify storage asset:context this.MovePerStep set value 0
