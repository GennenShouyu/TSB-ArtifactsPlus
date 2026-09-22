#> asset:effect/4220.time_acceleration/register
#
# Effectのデータを指定
#
# @within function asset:effect/4220.time_acceleration/_/register

# ExtendsSafe (boolean) (default = false)
    # data modify storage asset:effect ExtendsSafe set value true
# ID (int)
    data modify storage asset:effect ID set value 4220
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '{"text":"時の加速","color":"aqua"}'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value ['{"text":"MP自動回復+7を得るが、体力-10%、攻撃力、","color":"white"}','{"text":"防御力、移動速度-3%を受ける","color":"white"}','{"text":"時の流れを早めることは、自身の衰えも早めるということだ。","color":"gray"}']
# 効果時間 (int) (default = API || error)
    data modify storage asset:effect Duration set value 600
# スタック (int) (default = API || 1)
    # data modify storage asset:effect Stack set value
# 効果時間の操作方法 (default = API || "replace")
    # data modify storage asset:effect DurationOperation set value
# スタックの操作方法 (default = API || "replace")
    # data modify storage asset:effect StackOperation set value
# 最大効果時間 (int) (default = 2147483647)
    # data modify storage asset:effect MaxDuration set value
# 最大スタック (int) (default = 2147483647)
    data modify storage asset:effect MaxStack set value 1
# 悪い効果か否か (boolean)
    data modify storage asset:effect IsBadEffect set value false
# 死亡時のエフェクトの処理 (default = "remove")
    # data modify storage asset:effect ProcessOnDied set value
# 消すのに必要なレベル (int) (default = 1)
    data modify storage asset:effect RequireClearLv set value 3
# エフェクトをUIに表示するか (boolean) (default = true)
    # data modify storage asset:effect Visible set value
# エフェクトのスタックををUIに表示するか (boolean) (default = true)
    data modify storage asset:effect StackVisible set value false

# フィールド
    # data modify storage asset:effect Field set value {}
