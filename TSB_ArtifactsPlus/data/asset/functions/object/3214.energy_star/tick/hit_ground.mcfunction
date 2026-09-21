# 半径2mの敵1体にtarget
    tag @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,sort=nearest,distance=..4,limit=1] add 3214.Target

# 効果音
    execute at @e[tag=3214.Target] run particle dust 0.5 0.5 1 1 ~ ~1 ~ 0.5 0.5 0.5 1 10

# スロウ効果
    effect give @e[tag=3214.Target,tag=!Enemy.Boss] slowness 6 4 true
# 天使に対しては効果が落ちる
    effect give @e[tag=3214.Target,tag=Enemy.Boss] slowness 2 3 true

# リセット
    tag @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..10] remove 3214.Target

# 消滅
    execute on vehicle run kill @s
    kill @s