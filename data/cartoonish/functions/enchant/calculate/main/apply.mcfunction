execute store result score @s TEMP run data get storage cartoonish:enchant enchantTarget[0].lvl
execute store result score @s CAL run data get storage cartoonish:enchant enchantUsed[0].lvl
execute if score @s TEMP = @s CAL run scoreboard players add @s TEMP 1
execute if score @s TEMP < @s CAL run scoreboard players operation @s TEMP = @s CAL
execute store result storage cartoonish:enchant enchantTarget[0].lvl short 1 run scoreboard players get @s TEMP

tag @s add ct_apply_enchant