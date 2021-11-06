scoreboard players set @s random 1000
function random:generate

scoreboard players set @s TEMP 0
execute store result score @s CAL run data get storage cartoonish:option/table cloneRatio[0] 10
execute if score @s random_data >= @s CAL run scoreboard players add @s TEMP 1
scoreboard players operation @s random_data -= @s CAL
execute store result score @s CAL run data get storage cartoonish:option/table cloneRatio[1] 10
execute if score @s random_data >= @s CAL run scoreboard players add @s TEMP 1
scoreboard players operation @s random_data -= @s CAL
execute store result score @s CAL run data get storage cartoonish:option/table cloneRatio[2] 10
execute if score @s random_data >= @s CAL run scoreboard players add @s TEMP 1
scoreboard players operation @s random_data -= @s CAL
execute store result score @s CAL run data get storage cartoonish:option/table cloneRatio[3] 10
execute if score @s random_data >= @s CAL run scoreboard players add @s TEMP 1
scoreboard players operation @s random_data -= @s CAL
execute store result score @s CAL run data get storage cartoonish:option/table cloneRatio[4] 10
execute if score @s random_data >= @s CAL run scoreboard players add @s TEMP 1
scoreboard players operation @s random_data -= @s CAL
execute store result score @s CAL run data get storage cartoonish:option/table cloneRatio[5] 10
execute if score @s random_data >= @s CAL run scoreboard players add @s TEMP 1
scoreboard players operation @s random_data -= @s CAL
execute store result score @s CAL run data get storage cartoonish:option/table cloneRatio[6] 10
execute if score @s random_data >= @s CAL run scoreboard players add @s TEMP 1
scoreboard players operation @s random_data -= @s CAL
execute store result score @s CAL run data get storage cartoonish:option/table cloneRatio[7] 10
execute if score @s random_data >= @s CAL run scoreboard players add @s TEMP 1
scoreboard players operation @s random_data -= @s CAL
execute store result score @s CAL run data get storage cartoonish:option/table cloneRatio[8] 10
execute if score @s random_data >= @s CAL run scoreboard players add @s TEMP 1
scoreboard players operation @s random_data -= @s CAL
execute store result score @s CAL run data get storage cartoonish:option/table cloneRatio[9] 10
execute if score @s random_data >= @s CAL run scoreboard players add @s TEMP 1
scoreboard players operation @s random_data -= @s CAL
execute store result score @s CAL run data get storage cartoonish:option/table cloneRatio[10] 10
execute if score @s random_data >= @s CAL run scoreboard players add @s TEMP 1
scoreboard players operation @s random_data -= @s CAL
execute store result score @s CAL run data get storage cartoonish:option/table cloneRatio[11] 10
execute if score @s random_data >= @s CAL run scoreboard players add @s TEMP 1
scoreboard players operation @s random_data -= @s CAL
execute store result score @s CAL run data get storage cartoonish:option/table cloneRatio[12] 10
execute if score @s random_data >= @s CAL run scoreboard players add @s TEMP 1
scoreboard players operation @s random_data -= @s CAL
execute store result score @s CAL run data get storage cartoonish:option/table cloneRatio[13] 10
execute if score @s random_data >= @s CAL run scoreboard players add @s TEMP 1
scoreboard players operation @s random_data -= @s CAL
execute store result score @s CAL run data get storage cartoonish:option/table cloneRatio[14] 10
execute if score @s random_data >= @s CAL run scoreboard players add @s TEMP 1
scoreboard players operation @s random_data -= @s CAL
