# 各神器に必要なスコアボードを作成


    scoreboard objectives add TSBAP.message dummy
    # メッセージ（一度のみ表示）
    execute unless score #global TSBAP.message matches 1 run schedule function gs_artifactplus:message 1s replace

    # 逆上の一斧 artifact/3219.axe_of_frenzy
    scoreboard objectives add 1A0.Charge dummy
    scoreboard objectives add 1A0.Count dummy

    # 虚ろを除く銃口 artifact/3224.void_bayonet
    scoreboard objectives add 1A1.Time dummy
    scoreboard objectives add 1A1.WaitingTime dummy
    scoreboard objectives add 1A1.Turn dummy

    # ワルキューレ・ミサイル artifact/3231.valkyrie_missile
    scoreboard objectives add 1A7.Tag dummy
    scoreboard objectives add 1A7.var dummy
    scoreboard objectives add 1A7.localvar dummy

    # シェイカー・ポテト artifact/3235.shaker_fries
    scoreboard objectives add 1A9.Charge dummy

    # ガンマンのリボルバー artifact/3238.gunslinger_s_revolver
    scoreboard objectives add 1B0.Charge dummy

    # トゥルースシーカー artifact/3250.truthseeker
    scoreboard objectives add 1B1.LatestUseTick dummy
    scoreboard objectives add 1B1.Combo dummy

    # タイタンの鎧 artifact/3256.titanium_helm
    scoreboard objectives add 1B7.Stack dummy

    # 悪魔の債権 artifact/3266.devil_s_debt
    scoreboard objectives add 1B3.Charge dummy

    # ファイアボルトスロワー 3269.firebolt_thrower
    scoreboard objectives add 1B4.ChainCount dummy

    # 氷の牙 artifact/3270.fang_of_frost
    scoreboard objectives add 1B6.Charge dummy
    scoreboard objectives add 1B6.Count dummy

    # 蚊取閃光 object/3201.anti_mosquito_flash
    scoreboard objectives add 3201.Shot dummy

    # エナジー・スター object/3214.energy_star
    scoreboard objectives add 3214.hit dummy