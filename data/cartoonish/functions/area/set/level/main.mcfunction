execute store result score @s TEMP run data get entity @s Pos[0]
scoreboard players operation @s TEMP -= #worldspawn_x TEMP
execute if score @s TEMP matches ..-1 run scoreboard players operation @s TEMP *= #-1 TEMP
execute store result score @s CAL run data get entity @s Pos[2]
scoreboard players operation @s CAL -= #worldspawn_z TEMP
execute if score @s CAL matches ..-1 run scoreboard players operation @s CAL *= #-1 TEMP
scoreboard players operation @s TEMP > @s CAL

execute unless score @s ct_entity_level matches 0.. run function cartoonish:area/set/level/set_entity_level

tag @s add ct_check_area
execute if score @s ct_entity_level matches 1.. run function cartoonish:area/set/armor
execute if data entity @s {CanPickUpLoot:1} run data merge entity @s {CanPickUpLoot:0}

#execute as @e[tag=!ct_no_hp,tag=!ct_check_area,type=!player,limit=1] at @s run function cartoonish:area/set/level/main