#> asset:artifact/3223.combat_cutter/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3223.combat_cutter/trigger/2.check_condition

#> private
# @private
    #declare score_holder $SharpnessCount

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 使用回数を取る
    execute store result score $SharpnessCount Temporary run data get storage asset:context Items.mainhand.tag.TSB.RemainingCount

# vfx用
    execute if score $SharpnessCount Temporary matches 25 run playsound minecraft:block.anvil.use player @a ~ ~ ~ 0.7 0.8
    execute if score $SharpnessCount Temporary matches 25 run particle minecraft:block iron_block ~ ~1 ~ 0.4 1.0 0.4 0 20
    
    execute if score $SharpnessCount Temporary matches 50 run playsound minecraft:block.anvil.use player @a ~ ~ ~ 0.7 1.0
    execute if score $SharpnessCount Temporary matches 50 run particle minecraft:block iron_block ~ ~1 ~ 0.4 1.0 0.4 0 20

    execute if score $SharpnessCount Temporary matches 100 run playsound minecraft:block.anvil.use player @a ~ ~ ~ 0.7 1.2
    execute if score $SharpnessCount Temporary matches 100 run particle minecraft:block iron_block ~ ~1 ~ 0.4 1.0 0.4 0 20

    execute if score $SharpnessCount Temporary matches 160 run playsound minecraft:block.anvil.use player @a ~ ~ ~ 0.7 1.4
    execute if score $SharpnessCount Temporary matches 160 run particle minecraft:block iron_block ~ ~1 ~ 0.4 1.0 0.4 0 20

    execute if score $SharpnessCount Temporary matches 200 run playsound minecraft:block.anvil.use player @a ~ ~ ~ 0.7 1.6
    execute if score $SharpnessCount Temporary matches 200 run particle minecraft:block iron_block ~ ~1 ~ 0.4 1.0 0.4 0 20

    execute if score $SharpnessCount Temporary matches 240 run playsound minecraft:block.anvil.use player @a ~ ~ ~ 0.7 1.8
    execute if score $SharpnessCount Temporary matches 240 run particle minecraft:block iron_block ~ ~1 ~ 0.4 1.0 0.4 0 20

    execute if score $SharpnessCount Temporary matches 270 run playsound minecraft:block.anvil.use player @a ~ ~ ~ 0.7 2
    execute if score $SharpnessCount Temporary matches 270 run particle minecraft:block iron_block ~ ~1 ~ 0.4 1.0 0.4 0 20
    

# ダメージ
    execute if score $SharpnessCount Temporary matches 0.. run data modify storage api: Argument.Damage set value 550.0f
    execute if score $SharpnessCount Temporary matches 25.. run data modify storage api: Argument.Damage set value 420.0f
    execute if score $SharpnessCount Temporary matches 50.. run data modify storage api: Argument.Damage set value 320.0f
    execute if score $SharpnessCount Temporary matches 100.. run data modify storage api: Argument.Damage set value 280.0f
    execute if score $SharpnessCount Temporary matches 160.. run data modify storage api: Argument.Damage set value 240.0f
    execute if score $SharpnessCount Temporary matches 200.. run data modify storage api: Argument.Damage set value 200.0f
    execute if score $SharpnessCount Temporary matches 240.. run data modify storage api: Argument.Damage set value 150.0f
    execute if score $SharpnessCount Temporary matches 270.. run data modify storage api: Argument.Damage set value 120.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,distance=..10] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $SharpnessCount Temporary
