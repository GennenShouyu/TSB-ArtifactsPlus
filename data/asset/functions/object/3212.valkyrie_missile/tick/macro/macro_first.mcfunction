    
# スコアに応じてTagを付与
    scoreboard players add #global 1A7.var 1
    execute store result storage asset: 1A7_var int 1 run scoreboard players get #global 1A7.var

# ローカルに値を保存
    execute store result score @s 1A7.localvar run scoreboard players get #global 1A7.var
    function asset:object/3212.valkyrie_missile/tick/main with storage asset: