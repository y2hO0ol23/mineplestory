scoreboard players operation @s ct_entity_level > @s CAL
execute if entity @e[distance=0..,tag=ct_in_the_nether,type=marker] run scoreboard players operation @s ct_entity_level *= #8 TEMP
scoreboard players operation @s ct_entity_level -= #mid_area_distance TEMP
scoreboard players operation @s[scores={ct_entity_level=0..}] ct_entity_level /= #area_distance TEMP
execute if score @s ct_entity_level matches ..-1 run scoreboard players set @s ct_entity_level -1
scoreboard players add @s ct_entity_level 1
execute if score @s ct_entity_level > #area_count TEMP run scoreboard players operation @s ct_entity_level = #area_count TEMP
execute if entity @e[distance=0..,tag=ct_in_the_end,type=marker] run scoreboard players operation @s ct_entity_level = #area_count TEMP
execute if entity @s[type=#cartoonish:boss] run function cartoonish:area/set/level/boss
execute if entity @s[type=#cartoonish:middle_level] unless score @s ct_entity_level matches 8.. run scoreboard players set @s ct_entity_level 8
