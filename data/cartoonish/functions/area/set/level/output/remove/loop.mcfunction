tag @s remove ct_level_lookable
tag @s remove ct_target

scoreboard players operation @s TEMP = @s ct_entity_level
execute store result storage cartoonish:area level int 1 run scoreboard players add @s TEMP 1
execute if score @s ct_entity_level = #area_count TEMP run data modify storage cartoonish:area level set value "Max"
data modify block 0 0 0 Text1 set value "[\"\",\"Lv. \",{\"nbt\":\"level\",\"storage\":\"cartoonish:area\"}]"
execute store success score @s TEMP run data modify block 0 0 0 Text1 set from entity @s CustomName
data modify storage cartoonish:area Inventory set from entity @s Inventory
execute if score @s TEMP matches 0 run data modify entity @s CustomName set value ""
execute as @e[tag=ct_target,limit=1] run function cartoonish:area/set/level/output/remove/loop