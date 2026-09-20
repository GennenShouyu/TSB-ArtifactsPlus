#> asset:effect/4230.titan_fullset/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/4230.titan_fullset/_/re-given

# スタックを記録
    data modify storage asset:context this.PrevStack set from storage asset:context Stack
