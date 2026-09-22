# バフ解除
    data modify storage api: Argument.ID set value 4208
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $1A0.Stack Temporary
    scoreboard players reset @s 1A0.Charge
    execute as @e[tag=1A0.Target] run tag @s remove 1A0.Target