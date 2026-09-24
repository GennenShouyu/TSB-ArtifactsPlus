# カウント処理
    execute as @a[scores={1B3.Count=0..}] at @s run function asset:artifact/3266.devil_s_debt/damage/count

# スケジュールループ
    execute as @a[scores={1B3.Count=0..}] at @s run schedule function asset:artifact/3266.devil_s_debt/damage/schedule_loop 1t replace
    