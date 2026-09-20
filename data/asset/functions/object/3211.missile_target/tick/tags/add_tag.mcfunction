    
# スコアに応じてTagを付与
    scoreboard players add #global 1A7.Tag 1
    execute store result storage asset: 1A7_Tag int 1 run scoreboard players get #global 1A7.Tag
    function asset:object/3211.missile_target/tick/tags/tag.m with storage asset: