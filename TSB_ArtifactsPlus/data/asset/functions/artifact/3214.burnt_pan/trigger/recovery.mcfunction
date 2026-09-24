# 回復
    data modify storage api: Argument.Heal set value 25
    function api:heal/modifier
    function api:heal/

# 回復時の効果音
    playsound ogg:random.levelup player @a ~ ~ ~ 0.5 1.5

# パーティクル
    execute positioned ~ ~0.5 ~ rotated ~0 ~180 run function asset:artifact/3214.burnt_pan/trigger/vfx