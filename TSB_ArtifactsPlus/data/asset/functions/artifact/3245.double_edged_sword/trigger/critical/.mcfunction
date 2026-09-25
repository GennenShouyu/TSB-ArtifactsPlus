
# ターゲットにタグの付与
    execute as @e[type=#lib:living,tag=Victim,distance=..0.01,limit=1] run tag @s add 1B9.Target

# 音
    function asset:artifact/3245.double_edged_sword/trigger/sounds/tick
    function asset:artifact/3245.double_edged_sword/trigger/sounds/play

# スケジュールループ用カウントのリセット
    scoreboard players set @s 1B9.Count 84

# スケジュールループ
    function asset:artifact/3245.double_edged_sword/trigger/critical/schedule_loop

# 発光
    effect give @e[tag=1B9.Target] minecraft:glowing infinite 1 true

# チーム作成
    team add color_red
    team add color_gold
    team add color_yellow
    team add color_green
    team add color_aqua
    team add color_blue
    team add color_light_purple

    team modify color_red color red
    team modify color_gold color gold
    team modify color_yellow color yellow
    team modify color_green color green
    team modify color_aqua color aqua
    team modify color_blue color blue
    team modify color_light_purple color light_purple