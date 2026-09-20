#> asset:artifact/3215.anti_mosquito_flash/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのmainhand/feet/legs/chest/head/mainhand/offhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:3215} run function asset:artifact/3215.anti_mosquito_flash/trigger/2.check_condition
