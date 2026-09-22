
#> Private
# @private
    #declare score_holder $1A0.Stack

#カウント減少
    scoreboard players remove @s 1A0.Count 1

# チャージバフ取得
    data modify storage api: Argument.ID set value 4208
    function api:entity/mob/effect/get/from_id

    execute store result score $1A0.Stack Temporary run data get storage api: Return.Effect.Stack

    execute if score $1A0.Stack Temporary matches ..4 run function asset:artifact/3219.axe_of_frenzy/melee/slash/skills/skill_1

    execute if score $1A0.Stack Temporary matches 5.. if score $1A0.Stack Temporary matches ..9 run function asset:artifact/3219.axe_of_frenzy/melee/slash/skills/skill_2

    execute if score $1A0.Stack Temporary matches 10 run function asset:artifact/3219.axe_of_frenzy/melee/slash/skills/skill_3
