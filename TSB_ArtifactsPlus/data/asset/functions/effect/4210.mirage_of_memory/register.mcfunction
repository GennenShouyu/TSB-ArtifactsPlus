#> asset:effect/4210.mirage_of_memory/register
#
# Effectのデータを指定
#
# @within function asset:effect/4210.mirage_of_memory/_/register

# ExtendsSafe (boolean) (default = false)
    # data modify storage asset:effect ExtendsSafe set value true
# ID (int)
    data modify storage asset:effect ID set value 4210
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '{"text":"思い出を映す蜃気楼","color":"red"}'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value ['{"text":"最大MP+25%、MP自動回復毎秒+4、火攻撃+20%を得るが、","color":"white"}','{"text":"最大HPの20%を喪失し、防御力が低下する。","color":"white"}']
# 効果時間 (int) (default = API || error)
    data modify storage asset:effect Duration set value 900
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
