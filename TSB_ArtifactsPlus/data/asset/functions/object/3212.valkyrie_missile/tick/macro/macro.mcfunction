    
# ローカルで保存した値を使用
    execute store result storage asset:context 1A7_var int 1 run scoreboard players get @s 1A7.localvar
    function asset:object/3212.valkyrie_missile/tick/main with storage asset:context
    data remove storage asset: 1A7_var