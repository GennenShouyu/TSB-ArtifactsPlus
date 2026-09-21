#> asset:artifact/3267.chill_gale_knife/kill/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのmainhandに装備している神器のIDが入っているので比較し、~/2.mainを実行する（近接攻撃によるクールダウンを無視）
    execute if data storage asset:context id{mainhand:3267} run function asset:artifact/3267.chill_gale_knife/kill/2.main