#> asset:effect/4230.titan_fullset/register
#
# Effectのデータを指定
#
# @within function asset:effect/4230.titan_fullset/_/register

# ExtendsSafe (boolean) (default = false)
    # data modify storage asset:effect ExtendsSafe set value true
# ID (int)
    data modify storage asset:effect ID set value 4230
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '[{"text":"質実剛健","color":"gray"}]'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value ['{"translate":"敵からダメージを受けた時、"}','{"translate":"一定確率で %s を得る。","with":[{"text":"耐性 +5%","color":"green"}]}','{"translate":"この効果は最大 %s 重複する。","with":[{"text":"4回","color":"aqua"}]}','{"translate":"但し、効果時間中は%s状態になる。","with":[{"text":"空腹","color":"red"}]}']
# 効果時間 (int) (default = API || error)
    data modify storage asset:effect Duration set value 2147483647
# スタック (int) (default = API || 1)
    # data modify storage asset:effect Stack set value 1
# 効果時間の操作方法 (default = API || "replace")
    # data modify storage asset:effect DurationOperation set value
# スタックの操作方法 (default = API || "replace")
    data modify storage asset:effect StackOperation set value "forceReplace"
# 最大効果時間 (int) (default = 2147483647)
    # data modify storage asset:effect MaxDuration set value
# 最大スタック (int) (default = 2147483647)
    data modify storage asset:effect MaxStack set value 4
# 悪い効果か否か (boolean)
    data modify storage asset:effect IsBadEffect set value false
# 死亡時のエフェクトの処理 (default = "remove")
    data modify storage asset:effect ProcessOnDied set value "keep"
# 消すのに必要なレベル (int) (default = 1)
    data modify storage asset:effect RequireClearLv set value 3
# エフェクトをUIに表示するか (boolean) (default = true)
    data modify storage asset:effect Visible set value false
# エフェクトのスタックををUIに表示するか (boolean) (default = true)
    # data modify storage asset:effect StackVisible set value

# フィールド
    # data modify storage asset:effect Field set value {}
