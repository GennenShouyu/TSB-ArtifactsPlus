# カウント処理
    execute as @a[scores={1A0.Count=0..}] at @s run function asset:artifact/3219.axe_of_frenzy/melee/count

# スケジュールループ
    execute as @a[scores={1A0.Count=0..}] at @s run schedule function asset:artifact/3219.axe_of_frenzy/melee/schedule_loop 1t replace
    