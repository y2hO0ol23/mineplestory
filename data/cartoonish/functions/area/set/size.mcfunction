execute store result score @s TEMP run data get entity @s Size
execute store result entity @s Size int 1 run scoreboard players operation @s TEMP += @s ct_entity_level
