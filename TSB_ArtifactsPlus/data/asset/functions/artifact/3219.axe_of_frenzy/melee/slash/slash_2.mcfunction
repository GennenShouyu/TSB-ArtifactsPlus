#> Private
# @private
    #declare score_holder $1A0.Stack

# チャージバフ取得
    data modify storage api: Argument.ID set value 4208
    function api:entity/mob/effect/get/from_id

# スタックをスコアへ
    execute store result score $1A0.Stack Temporary run data get storage api: Return.Effect.Stack

# スタック毎のダメージ設定
    execute if score $1A0.Stack Temporary matches 0 run data modify storage api: Argument.Damage set value 1800
    execute if score $1A0.Stack Temporary matches 1 run data modify storage api: Argument.Damage set value 2700
    execute if score $1A0.Stack Temporary matches 2 run data modify storage api: Argument.Damage set value 3600
    execute if score $1A0.Stack Temporary matches 3 run data modify storage api: Argument.Damage set value 4500
    execute if score $1A0.Stack Temporary matches 4 run data modify storage api: Argument.Damage set value 5400
    execute if score $1A0.Stack Temporary matches 5 run data modify storage api: Argument.Damage set value 6300
    execute if score $1A0.Stack Temporary matches 6 run data modify storage api: Argument.Damage set value 7200
    execute if score $1A0.Stack Temporary matches 7 run data modify storage api: Argument.Damage set value 8100
    execute if score $1A0.Stack Temporary matches 8 run data modify storage api: Argument.Damage set value 9000
    execute if score $1A0.Stack Temporary matches 9 run data modify storage api: Argument.Damage set value 9900
    execute if score $1A0.Stack Temporary matches 10 run data modify storage api: Argument.Damage set value 10800

    execute store result storage api: Argument.Damage float 0.25 run data get storage api: Argument.Damage

# ダメージ
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,tag=1A0.Target] run function api:damage/
    function api:damage/reset