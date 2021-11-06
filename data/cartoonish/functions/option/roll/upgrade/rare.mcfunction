scoreboard players set @s random 1000
function random:generate

execute store result score @s CAL run data get storage cartoonish:option/table cubeGrade
scoreboard players add @s CAL 1
execute store result score @s TEMP run data get storage cartoonish:option/table upgrade[1] 10
scoreboard players operation @s TEMP *= @s CAL
execute if score @s random_data < @s TEMP run data modify storage cartoonish:option/table target.tag.grade set value 2