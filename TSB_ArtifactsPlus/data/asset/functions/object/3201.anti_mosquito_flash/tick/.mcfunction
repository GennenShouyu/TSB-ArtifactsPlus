#> asset:object/3201.anti_mosquito_flash/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/3201/tick

#> tag
# @private
    #declare tag 3201.Target
    #declare tag 3201.Even
    #declare score_holder $3201.ShotCount

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 10tickおきに実行するやつ
# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
# 16tickおきに実行
    scoreboard players operation $Interval Temporary %= $10 Const
    execute if score $Interval Temporary matches 0 at @s run function asset:object/3201.anti_mosquito_flash/tick/beam/beam
# リセット
    scoreboard players reset $Interval
    tag @s remove 3201.Even
# ターゲットのタグを消す
    tag @e[type=#lib:living,tag=Enemy,tag=3201.Target,tag=!Uninterferable,distance=..40] remove 3201.Target
# 消滅処理
    kill @s[scores={General.Object.Tick=180..}]
