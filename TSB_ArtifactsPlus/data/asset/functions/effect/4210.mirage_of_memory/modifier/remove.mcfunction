#> asset:effect/4210.mirage_of_memory/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/4210.mirage_of_memory/end/
#   asset:effect/4210.mirage_of_memory/remove/

# 攻撃補正を付与(火+20%)
    data modify storage api: Argument.UUID set value [I;1,3,4210,0]
    function api:modifier/attack/fire/remove

# 最大MP
    data modify storage api: Argument.UUID set value [I;1,3,4210,0]
    function api:modifier/max_mp/remove

# 最大体力
    data modify storage api: Argument.UUID set value [I;1,3,4210,0]
    function api:modifier/max_health/remove

# 防御+20%
    data modify storage api: Argument.UUID set value [I;1,3,4210,0]
    function api:modifier/defense/base/remove