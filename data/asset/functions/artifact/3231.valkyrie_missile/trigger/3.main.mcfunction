#> asset:artifact/3231.valkyrie_missile/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3231.valkyrie_missile/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $Random

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# playsound
    playsound block.note_block.harp player @a ~ ~ ~ 4 2

# 個別タグ用スコアボードをリセット
    scoreboard players set #global 1A7.Tag 0
    scoreboard players set #global 1A7.var 0

# 残り回数が1回の時発動した場合
    execute unless data storage asset:context Items.mainhand.id run data modify storage api: Argument.ID set value 3225
    execute unless data storage asset:context Items.mainhand.id run function api:artifact/replace/from_id

# 弾丸を25個生成
    function asset:artifact/3231.valkyrie_missile/trigger/summon_bullet {PosX:4, PosY:1}
    function asset:artifact/3231.valkyrie_missile/trigger/summon_bullet {PosX:2, PosY:1}
    function asset:artifact/3231.valkyrie_missile/trigger/summon_bullet {PosX:0, PosY:1}
    function asset:artifact/3231.valkyrie_missile/trigger/summon_bullet {PosX:-2, PosY:1}
    function asset:artifact/3231.valkyrie_missile/trigger/summon_bullet {PosX:-4, PosY:1}

    function asset:artifact/3231.valkyrie_missile/trigger/summon_bullet {PosX:4, PosY:0.5}
    function asset:artifact/3231.valkyrie_missile/trigger/summon_bullet {PosX:2, PosY:0.5}
    function asset:artifact/3231.valkyrie_missile/trigger/summon_bullet {PosX:0, PosY:0.5}
    function asset:artifact/3231.valkyrie_missile/trigger/summon_bullet {PosX:-2, PosY:0.5}
    function asset:artifact/3231.valkyrie_missile/trigger/summon_bullet {PosX:-4, PosY:0.5}

    function asset:artifact/3231.valkyrie_missile/trigger/summon_bullet {PosX:4, PosY:0}
    function asset:artifact/3231.valkyrie_missile/trigger/summon_bullet {PosX:2, PosY:0}
    function asset:artifact/3231.valkyrie_missile/trigger/summon_bullet {PosX:0, PosY:0}
    function asset:artifact/3231.valkyrie_missile/trigger/summon_bullet {PosX:-2, PosY:0}
    function asset:artifact/3231.valkyrie_missile/trigger/summon_bullet {PosX:-4, PosY:0}

    function asset:artifact/3231.valkyrie_missile/trigger/summon_bullet {PosX:4, PosY:-0.5}
    function asset:artifact/3231.valkyrie_missile/trigger/summon_bullet {PosX:2, PosY:-0.5}
    function asset:artifact/3231.valkyrie_missile/trigger/summon_bullet {PosX:0, PosY:-0.5}
    function asset:artifact/3231.valkyrie_missile/trigger/summon_bullet {PosX:-2, PosY:-0.5}
    function asset:artifact/3231.valkyrie_missile/trigger/summon_bullet {PosX:-4, PosY:-0.5}

    function asset:artifact/3231.valkyrie_missile/trigger/summon_bullet {PosX:4, PosY:-1}
    function asset:artifact/3231.valkyrie_missile/trigger/summon_bullet {PosX:2, PosY:-1}
    function asset:artifact/3231.valkyrie_missile/trigger/summon_bullet {PosX:0, PosY:-1}
    function asset:artifact/3231.valkyrie_missile/trigger/summon_bullet {PosX:-2, PosY:-1}
    function asset:artifact/3231.valkyrie_missile/trigger/summon_bullet {PosX:-4, PosY:-1}

# ミサイル召喚
    function asset:artifact/3231.valkyrie_missile/trigger/summon_missile
    function asset:artifact/3231.valkyrie_missile/trigger/summon_missile
    function asset:artifact/3231.valkyrie_missile/trigger/summon_missile
    function asset:artifact/3231.valkyrie_missile/trigger/summon_missile
    function asset:artifact/3231.valkyrie_missile/trigger/summon_missile

    function asset:artifact/3231.valkyrie_missile/trigger/summon_missile
    function asset:artifact/3231.valkyrie_missile/trigger/summon_missile
    function asset:artifact/3231.valkyrie_missile/trigger/summon_missile
    function asset:artifact/3231.valkyrie_missile/trigger/summon_missile
    function asset:artifact/3231.valkyrie_missile/trigger/summon_missile

    function asset:artifact/3231.valkyrie_missile/trigger/summon_missile
    function asset:artifact/3231.valkyrie_missile/trigger/summon_missile
    function asset:artifact/3231.valkyrie_missile/trigger/summon_missile
    function asset:artifact/3231.valkyrie_missile/trigger/summon_missile
    function asset:artifact/3231.valkyrie_missile/trigger/summon_missile

    function asset:artifact/3231.valkyrie_missile/trigger/summon_missile
    function asset:artifact/3231.valkyrie_missile/trigger/summon_missile
    function asset:artifact/3231.valkyrie_missile/trigger/summon_missile
    function asset:artifact/3231.valkyrie_missile/trigger/summon_missile
    function asset:artifact/3231.valkyrie_missile/trigger/summon_missile

    function asset:artifact/3231.valkyrie_missile/trigger/summon_missile
    function asset:artifact/3231.valkyrie_missile/trigger/summon_missile
    function asset:artifact/3231.valkyrie_missile/trigger/summon_missile
    function asset:artifact/3231.valkyrie_missile/trigger/summon_missile
    function asset:artifact/3231.valkyrie_missile/trigger/summon_missile

# 疑似乱数取得
    execute store result score $Random Temporary run random value 0..2
# 向きを適当に変える
    execute unless predicate lib:is_sneaking if score $Random Temporary matches 0 run tp @s ~ ~ ~ ~ ~-1
    execute unless predicate lib:is_sneaking if score $Random Temporary matches 1 run tp @s ~ ~ ~ ~-1 ~-1
    execute unless predicate lib:is_sneaking if score $Random Temporary matches 2 run tp @s ~ ~ ~ ~1 ~-1
    scoreboard players reset $Random Temporary

# リセット
    scoreboard players reset $Random Temporary