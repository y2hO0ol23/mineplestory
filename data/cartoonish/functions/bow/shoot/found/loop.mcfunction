tag @s add this

execute as @a at @s anchored eyes positioned ^ ^ ^ if entity @e[distance=..0.5,type=#minecraft:arrows,tag=this] run tag @s add ct_bow_target
execute at @a[tag=ct_bow_target] run summon marker ~ ~ ~ {Tags:["ct_found_owner"]}
tag @a[tag=ct_bow_target] remove ct_bow_target

execute as @e[type=marker,tag=ct_found_owner] at @s run data modify entity @s data.Owner set from entity @p UUID
execute as @e[type=marker,tag=ct_found_owner] store success score @s TEMP run data modify entity @s data.Owner set from entity @e[limit=1,type=#minecraft:arrows,tag=this] Owner
execute as @e[type=!#minecraft:arrows,type=!player,tag=!ct_found_owner] at @s anchored eyes positioned ^ ^ ^ if entity @e[distance=..0.5,type=#minecraft:arrows,tag=this] store success score @s TEMP run data modify entity @s UUID set from entity @e[limit=1,type=#minecraft:arrows,tag=this] Owner

execute as @e[type=!player,tag=!ct_found_owner,scores={TEMP=0}] at @s anchored eyes positioned ^ ^ ^ if entity @e[distance=..0.5,type=#minecraft:arrows,tag=this] run tag @s add this
execute at @e[type=marker,tag=ct_found_owner,scores={TEMP=0}] run tag @p add this

execute if entity @e[type=!#minecraft:arrows,tag=this] if data entity @s {pickup:0b} run data merge entity @s {pickup:1b}
data merge entity @s {crit:0b}

### bow option ###
# ATK
execute as @p[tag=this,tag=ct_bow_on_left] store result score @s TEMP run data get entity @s Inventory[{Slot:-106b}].tag.statTable[6]
execute as @p[tag=this,tag=!ct_bow_on_left] store result score @s TEMP run data get entity @s SelectedItem.tag.statTable[6]
data modify storage cartoonish:option/table whereis set from entity @e[tag=this,tag=!ct_found_owner,type=!player,type=!#minecraft:arrows,limit=1] HandItems[0]
execute unless data storage cartoonish:option/table whereis{id:"minecraft:bow"} unless data storage cartoonish:option/table whereis{id:"minecraft:crossbow"} run tag @s add ct_option_from_left 
execute if entity @s[tag=!ct_option_from_left] as @e[tag=this,tag=!ct_found_owner,type=!player,type=!#minecraft:arrows,limit=1] store result score @s TEMP run data get entity @s HandItems[0].tag.statTable[6]
execute if entity @s[tag=ct_option_from_left] as @e[tag=this,tag=!ct_found_owner,type=!player,type=!#minecraft:arrows,limit=1] store result score @s TEMP run data get entity @s HandItems[1].tag.statTable[6]
# Critical
execute as @e[tag=!ct_found_owner,type=!#minecraft:arrows,tag=this,limit=1] run function cartoonish:bow/shoot/found/crit/check

execute store result entity @s damage double 0.05 run scoreboard players get @e[tag=this,type=!#minecraft:arrows,limit=1] TEMP

execute if entity @s[predicate=cartoonish:nbt/shot_from_crossbow_0] as @e[tag=!ct_found_owner,type=!#minecraft:arrows,tag=this] run function cartoonish:bow/shoot/found/just_bow
tag @s remove ct_option_from_left
tag @s remove ct_new_arrow
tag @e[tag=this] remove this
kill @e[type=marker,tag=ct_found_owner]

execute as @e[tag=ct_new_arrow,limit=1] run function cartoonish:bow/shoot/found/loop
