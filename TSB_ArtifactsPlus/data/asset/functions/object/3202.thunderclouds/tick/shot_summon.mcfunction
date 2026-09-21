#> asset:object/3202.thunderclouds/tick/shot_summon
#
# 弾召喚の処理
#
# @within function asset:object/3202.thunderclouds/tick/kill

# 召喚のデータ設定
    data modify storage api: Argument.ID set value 3206
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Shot
    data modify storage api: Argument.FieldOverride.UserID set from storage asset:context this.UserID

# Ownerと真逆の方向を見て召喚
    execute facing entity @p[tag=Owner] eyes facing ^ ^ ^-1 run function api:object/summon
