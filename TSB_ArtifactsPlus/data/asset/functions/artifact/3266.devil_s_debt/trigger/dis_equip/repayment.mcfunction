#> asset:artifact/3266.devil_s_debt/trigger/dis_equip/repayment
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/3266.devil_s_debt/trigger/dis_equip/main


# スタックに応じてエフェクト

# @private
    #declare score_holder $1B3.Stack

# スタックに応じてダメージ
    data modify storage api: Argument.ID set value 4228
    function api:entity/mob/effect/get/from_id
    execute store result storage api: Argument.Damage float 4.0 run data get storage api: Return.Effect.Stack
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは債務超過した","with":[{"selector":"@s"}]}]']
    function api:damage/modifier
    function api:damage/
    function api:damage/reset

# スタックをスコアへ
    execute store result score $1B3.Stack Temporary run data get storage api: Return.Effect.Stack

# 効果音など
    execute if score $1B3.Stack Temporary matches 1.. run function asset:artifact/3266.devil_s_debt/trigger/dis_equip/vfx

# スタック毎のデバフ設定
    execute if score $1B3.Stack Temporary matches 1.. if score $1B3.Stack Temporary matches ..9 run tellraw @s [{"text":"<Devil> ","color":"white"},{"text":"ご利用は計画的に。","color":"red"}]

    execute if score $1B3.Stack Temporary matches 10 run tellraw @s [{"text":"<Devil> ","color":"white"},{"text":"ご利用は計画的に。","color":"dark_red","bold":true}]

# バフ解除
    data modify storage api: Argument.ID set value 4228
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $1B3.Stack Temporary
    scoreboard players reset @s 1B3.Charge