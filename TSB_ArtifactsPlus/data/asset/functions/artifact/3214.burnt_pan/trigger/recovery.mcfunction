# 回復
    data modify storage api: Argument.Heal set value 25
    function api:heal/modifier
    function api:heal/

# 回復時の効果音
    playsound ogg:random.levelup player @a ~ ~ ~ 0.5 1.5

# パーティクル
    particle flame ~ ~1 ~ 0.5 1 0.5 0.1 20