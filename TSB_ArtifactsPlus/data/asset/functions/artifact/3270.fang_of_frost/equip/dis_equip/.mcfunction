#> asset:artifact/3270.fang_of_frost/equip/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/dis_equip

    execute if data storage asset:context id{mainhand:3270} run function asset:artifact/3270.fang_of_frost/equip/dis_equip/main

    execute if data storage asset:context id{offhand:3270} run function asset:artifact/3270.fang_of_frost/equip/dis_equip/offhand/main
