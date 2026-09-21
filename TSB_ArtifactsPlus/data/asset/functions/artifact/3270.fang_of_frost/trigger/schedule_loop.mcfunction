
# カウント処理
    execute as @a[scores={1B6.Count=0..}] at @s run function asset:artifact/3270.fang_of_frost/trigger/count

# スケジュールループ
    execute as @a[scores={1B6.Count=0..}] at @s run schedule function asset:artifact/3270.fang_of_frost/trigger/schedule_loop 1t replace
    