#> asset:artifact/3238.gunslinger_s_revolver/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのmainhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:3238} run function asset:artifact/3238.gunslinger_s_revolver/trigger/2.check_condition