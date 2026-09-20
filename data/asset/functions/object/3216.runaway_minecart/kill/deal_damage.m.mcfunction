#> asset:object/3216.runaway_minecart/kill/deal_damage.m
#
#
#
# @input args
#   RangeMax: double
#   RangeMaxD: double
#   RangeMinSubCommand: string
#   DamagePer: int
# @within function asset:object/3216.runaway_minecart/kill/

$execute store result storage api: Argument.Damage double 0.01 run data get storage asset:context this.Damage $(DamagePer)

data modify storage api: Argument.AttackType set value "Physical"
data modify storage api: Argument.ElementType set value "None"
data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal

execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
$execute positioned ~-$(RangeMax) ~-$(RangeMax) ~-$(RangeMax) as @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,dx=$(RangeMaxD),dy=$(RangeMaxD),dz=$(RangeMaxD)] positioned ~$(RangeMax) ~$(RangeMax) ~$(RangeMax) $(RangeMinSubCommand)run function api:damage/
function api:damage/reset
