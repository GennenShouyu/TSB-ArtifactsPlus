#> asset:artifact/3226.sunk_heart/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのhotbarに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{hotbar:[3226]} run function asset:artifact/3226.sunk_heart/trigger/2.check_condition
