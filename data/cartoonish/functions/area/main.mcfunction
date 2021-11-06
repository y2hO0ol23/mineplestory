execute if entity @e[tag=!ct_no_hp,tag=!ct_check_area,type=!player] run function cartoonish:area/set/level

#execute at @a as @e[distance=..10,tag=!ct_level_lookable,type=!player,tag=!ct_no_hp,type=!#cartoonish:boss] unless data entity @s Inventory unless data entity @s CustomName run tag @s add ct_target
#execute if entity @e[tag=ct_target] in overworld run function cartoonish:area/set/level/output/lookable
tag @e[tag=ct_level_lookable] add ct_target
execute at @a run tag @e[distance=..15,tag=ct_level_lookable,tag=ct_target] remove ct_target
execute if entity @e[tag=ct_target] in overworld run function cartoonish:area/set/level/output/remove
