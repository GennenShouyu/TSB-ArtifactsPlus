#> asset:artifact/3219.axe_of_frenzy/damage/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idの%slot%に装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{hotbar:[3219]} run function asset:artifact/3219.axe_of_frenzy/damage/2.check_condition