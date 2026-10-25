#> asset:artifact/3276.minigun_turret_trigger/tick/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのautoに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:3276} run function asset:artifact/3276.minigun_turret_trigger/tick/2.check_condition