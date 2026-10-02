# メッセージ
    tellraw @a {"text":"**諸刃の剣よりお知らせ**","color":"gray"}
    tellraw @a {"text":"-*xX　！！！確変突入！！！　Xx*-","color":"yellow"}
    #tellraw @a [{"text":"-","color":"red"},{"text":"*","color":"gold"},{"text":"x","color":"yellow"},{"text":"X ","color":"green"},{"text":"！","color":"aqua"},{"text":"！","color":"blue"},{"text":"！","color":"purple"},{"text":"確","color":"red"},{"text":"変","color":"gold"},{"text":"突","color":"yellow"},{"text":"入","color":"green"},{"text":"！","color":"aqua"},{"text":"！","color":"blue"},{"text":"！　","color":"purple"},{"text":"X","color":"red"},{"text":"x","color":"orange"},{"text":"*","color":"yellow"},{"text":"-","color":"green"}]
    tellraw @a {"text":" ","color":"white"}
    tellraw @a [{"text":"確変中、会心の一撃確率が","color":"white"},{"text":"3倍","color":"aqua","bold":true},{"text":"に上昇！！！","color":"white"}]
    tellraw @a {"text":"また、通常ダメージが225まで増加し、","color":"white"}
    tellraw @a {"text":"自分へのダメージが1ダメージにまで低下！！","color":"white"}
    tellraw @a {"text":" ","color":"white"}

# 確変カウントのセット（リセット）
    scoreboard players set @s 1B9.BonusRound 80
