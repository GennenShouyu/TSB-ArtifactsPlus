#> asset:artifact/3273.plasmatic_blade/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/3273.plasmatic_blade/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# 前回の使用時のTickとの差を計算する
    execute store result score $LatestUseTick Temporary run data get storage asset:context Items.mainhand.tag.TSB.LatestUseTick
    execute store result score $TickSinceLastUse Temporary run time query gametime
    scoreboard players operation $TickSinceLastUse Temporary -= $LatestUseTick Temporary
    scoreboard players reset $LatestUseTick Temporary

# ラピッドスラッシュ中は仕様処理がキャンセルされる
    execute if score @s 1BB.BurstCount matches 0.. run tag @s remove CanUsed

# コンボフィニッシュを出したあとは、前回の使用時とのTickの差が13Tick以上でないと使用処理がキャンセルされる
    execute if score @s 1BB.Combo matches 4.. unless score $TickSinceLastUse Temporary matches 13.. run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    # シフトで使用の場合はチェックをスキップする
    execute if predicate lib:is_sneaking run function asset:artifact/3273.plasmatic_blade/trigger/mode_change/
    # 通常使用
    execute if entity @s[tag=CanUsed] unless predicate lib:is_sneaking run function asset:artifact/3273.plasmatic_blade/trigger/3.main

# リセット
    scoreboard players reset $TickSinceLastUse Temporary
