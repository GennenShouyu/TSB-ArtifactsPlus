    # 雑魚の場合はダメージを増加
        execute as @e[type=#lib:living,tag=Victim,tag=!Enemy.Boss,tag=!Uninterferable,distance=..20] run function asset:artifact/3204.real_knife/trigger/attack_increase

    # 天使の場合はダメージ変化無し
        execute as @e[type=#lib:living,tag=Victim,tag=Enemy.Boss,tag=!Uninterferable,distance=..20] run function asset:artifact/3204.real_knife/trigger/attack