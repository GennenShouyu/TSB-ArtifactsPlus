#> asset:artifact/3270.fang_of_frost/equip/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのmainhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:3270} run function asset:artifact/3270.fang_of_frost/equip/2.check_condition
    execute if data storage asset:context id{offhand:3270} run function asset:artifact/3270.fang_of_frost/equip/offhand/2.check_condition