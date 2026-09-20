#> asset:object/3219.arrow_of_firebolt_thrower/pre_hit/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/3219/pre_hit

# パーティクル
    particle minecraft:explosion ~ ~ ~ 0.2 0.2 0.2 0 1

# 効果音
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1.0 1.0

# ダメージ
    data modify storage asset:context this.Damage set from storage asset:context this.Damage

# 確率で矢を生成
    execute unless score #global 1B4.ChainCount matches 4.. run execute if predicate lib:random_pass_per/40 run function asset:object/3219.arrow_of_firebolt_thrower/pre_hit/arrow
    # テスト用メッセージ
    # execute if score #global 1B4.ChainCount matches 4.. run say 連鎖上限に達しました！
