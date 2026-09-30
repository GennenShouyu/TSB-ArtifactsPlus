    
# 反射処理
    execute unless block ^ ^ ^1.0 #lib:no_collision run scoreboard players set $Speed Lib 10
    execute unless block ^ ^ ^0.5 #lib:no_collision run scoreboard players set $Speed Lib 5
    function lib:reflection_bullet/
# 敵がいるならそっちを向く
    execute at @s positioned ^ ^ ^20 if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..20] run tag @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] add Target
    execute at @s if entity @e[type=#lib:living,tag=Enemy,tag=Target,tag=!Uninterferable,distance=..40] run tp @s ~ ~ ~ facing entity @e[type=#lib:living,tag=Enemy,tag=Target,tag=!Uninterferable,distance=..40,sort=nearest,limit=1] eyes
    tag @e[type=#lib:living,tag=Enemy,tag=Target,tag=!Uninterferable,distance=..40] remove Target