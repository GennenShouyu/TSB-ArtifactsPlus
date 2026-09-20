#> asset:object/3217.fireworks/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/3217/kill

#> Private
# @within function asset:object/3217.fireworks/kill/*
#declare score_holder $UserID

# 演出
    particle flash ~ ~ ~ 0 0 0 4 0 force
    particle flame ~ ~ ~ 0 0 0 0.3 20 force
    particle campfire_cosy_smoke ~ ~ ~ 0 0 0 0.05 10 force
    particle explosion ~ ~ ~ 0 0 0 0 1 force
    playsound entity.generic.explode player @a[distance=..20] ~ ~ ~ 1 1 0.3
    playsound entity.generic.explode player @a[distance=..20] ~ ~ ~ 1 0 0.3
    playsound entity.blaze.burn player @a[distance=..20] ~ ~ ~ 1 1 0.3
    summon firework_rocket ^ ^-5 ^-5 {Silent:1b,LifeTime:0,Motion:[0.0d,1.0d,0.0d],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:0b,Trail:1b,Colors:[I;15790320]}],FadeColors:[I;15790320],Flight:1}}}}
    summon firework_rocket ^ ^5 ^-5 {Silent:1b,LifeTime:0,Motion:[0.0d,1.0d,0.0d],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:0b,Trail:1b,Colors:[I;15790320]}],FadeColors:[I;15790320],Flight:1}}}}
    summon firework_rocket ^ ^-10 ^-5 {Silent:1b,LifeTime:0,Motion:[0.0d,1.0d,0.0d],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:0b,Trail:1b,Colors:[I;15790320]}],FadeColors:[I;15790320],Flight:1}}}}
    summon firework_rocket ^ ^10 ^-5 {Silent:1b,LifeTime:0,Motion:[0.0d,1.0d,0.0d],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:0b,Trail:1b,Colors:[I;15790320]}],FadeColors:[I;15790320],Flight:1}}}}
    summon firework_rocket ^ ^-15 ^-5 {Silent:1b,LifeTime:0,Motion:[0.0d,1.0d,0.0d],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:0b,Trail:1b,Colors:[I;15790320]}],FadeColors:[I;15790320],Flight:1}}}}
    summon firework_rocket ^ ^15 ^-5 {Silent:1b,LifeTime:0,Motion:[0.0d,1.0d,0.0d],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:0b,Trail:1b,Colors:[I;15790320]}],FadeColors:[I;15790320],Flight:1}}}}
    summon firework_rocket ~ ~ ~ {LifeTime:0, FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:0b,Trail:0b,Colors:[I;15790320],FadeColors:[I;15790320]}],FadeColors:[I;15790320],Flight:1}}}}
    title @a title "おめでとう"
    execute at @a run playsound ui.toast.challenge_complete player @a ~ ~ ~ 1 1


# プレイヤー特定
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
# ダメージ
    function api:damage/single_damage_session/open
    function asset:object/3217.fireworks/kill/deal_damage.m {DamagePer:100,RangeMax:0.5,RangeMaxD:0,RangeMinSubCommand:""}
    function asset:object/3217.fireworks/kill/deal_damage.m {DamagePer: 75,RangeMax:1.0,RangeMaxD:1,RangeMinSubCommand:"positioned ~-0.5 ~-0.5 ~-0.5 unless entity @s[dx=0,dy=0,dz=0] "}
    function asset:object/3217.fireworks/kill/deal_damage.m {DamagePer: 55,RangeMax:1.5,RangeMaxD:2,RangeMinSubCommand:"positioned ~-1.0 ~-1.0 ~-1.0 unless entity @s[dx=1,dy=1,dz=1] "}
    function asset:object/3217.fireworks/kill/deal_damage.m {DamagePer: 30,RangeMax:2.0,RangeMaxD:3,RangeMinSubCommand:"positioned ~-1.5 ~-1.5 ~-1.5 unless entity @s[dx=2,dy=2,dz=2] "}
    function asset:object/3217.fireworks/kill/deal_damage.m {DamagePer: 20,RangeMax:2.5,RangeMaxD:4,RangeMinSubCommand:"positioned ~-2.0 ~-2.0 ~-2.0 unless entity @s[dx=3,dy=3,dz=3] "}
    function api:damage/single_damage_session/close
# リセット
    scoreboard players reset $UserID Temporary

# super 呼び出し
    function asset:object/super.method
