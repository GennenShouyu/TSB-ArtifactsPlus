# カウント処理
    execute as @a[scores={1B9.Count=0..}] at @s run function asset:artifact/3245.double_edged_sword/trigger/critical/count

# スケジュールループ
    execute as @a[scores={1B9.Count=0..}] at @s run schedule function asset:artifact/3245.double_edged_sword/trigger/critical/schedule_loop 1t replace
    