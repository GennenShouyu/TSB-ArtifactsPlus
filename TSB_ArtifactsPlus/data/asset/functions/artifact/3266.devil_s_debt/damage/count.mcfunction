# クールタイムがリセットされているならチャージを+1
    execute if score @s 1B3.Count matches 20 run scoreboard players add @s 1B3.Charge 1

# エフェクトのスタック更新など
    execute if score @s 1B3.Count matches 20 run function asset:artifact/3266.devil_s_debt/damage/update_stack

#カウント減少
    scoreboard players remove @s 1B3.Count 1

