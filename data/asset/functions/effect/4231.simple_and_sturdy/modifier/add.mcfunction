#> asset:effect/4231.simple_and_sturdy/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/4231.simple_and_sturdy/given/

# 防御
    data modify storage api: Argument.UUID set value [I;1,3,4231,0]

# スタックに応じて防御力上昇
    execute if data storage asset:context {Stack:1} run data modify storage api: Argument.Amount set value 0.05d
    execute if data storage asset:context {Stack:2} run data modify storage api: Argument.Amount set value 0.10d
    execute if data storage asset:context {Stack:3} run data modify storage api: Argument.Amount set value 0.15d
    execute if data storage asset:context {Stack:4} run data modify storage api: Argument.Amount set value 0.20d

    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/base/add