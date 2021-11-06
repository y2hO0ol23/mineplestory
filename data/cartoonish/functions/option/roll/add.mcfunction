function cartoonish:option/roll/type/main

#copy to stattable
function cartoonish:option/roll/add/set_stat_table
execute store result storage cartoonish:option/table makeUp.type int 1 run scoreboard players get @s TEMP

scoreboard players set @s random 1000
function random:generate

execute store result score @s TEMP run data get storage cartoonish:option/table cubeGrade
scoreboard players add @s TEMP 1
execute store result score @s CAL run data get storage cartoonish:option/table next 10
scoreboard players operation @s CAL *= @s TEMP

execute store result score @s TEMP run data get storage cartoonish:option/table target.tag.grade
execute if score @s TEMP matches 1.. if data storage cartoonish:option/table target.tag.options[0] unless score @s random_data < @s CAL run scoreboard players remove @s TEMP 1

execute if score @s TEMP matches 0 run scoreboard players set @s CAL 1
execute if score @s TEMP matches 0 store result score @s random run data get storage cartoonish:option/table stattable.table[0] 10
execute if score @s TEMP matches 1 store result score @s CAL run data get storage cartoonish:option/table stattable.table[0] 10
execute if score @s TEMP matches 1 store result score @s random run data get storage cartoonish:option/table stattable.table[1] 10
execute if score @s TEMP matches 2 store result score @s CAL run data get storage cartoonish:option/table stattable.table[1] 10
execute if score @s TEMP matches 2 store result score @s random run data get storage cartoonish:option/table stattable.table[2] 10
execute if score @s TEMP matches 3 store result score @s CAL run data get storage cartoonish:option/table stattable.table[2] 10
execute if score @s TEMP matches 3 store result score @s random run data get storage cartoonish:option/table stattable.table[3] 10
execute if score @s TEMP matches 4 store result score @s CAL run data get storage cartoonish:option/table stattable.table[3] 10
execute if score @s TEMP matches 4 store result score @s random run data get storage cartoonish:option/table stattable.table[4] 10
scoreboard players operation @s random -= @s CAL
function random:generate
scoreboard players operation @s CAL += @s random_data
execute store result storage cartoonish:option/table makeUp.value double 0.1 run scoreboard players get @s CAL
execute store result storage cartoonish:option/table makeUp.grade int 1 run scoreboard players get @s TEMP

data modify storage cartoonish:option/table target.tag.options append from storage cartoonish:option/table makeUp
data modify storage cartoonish:option/table target.tag.optionOutput append from storage cartoonish:option/table stattable.output

function cartoonish:option/roll/add/set_option_table
