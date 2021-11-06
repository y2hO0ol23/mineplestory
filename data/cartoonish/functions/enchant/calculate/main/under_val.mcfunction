execute store result score @s CAL run data get storage cartoonish:enchant enchantCost
execute store result entity @s data.resultCost int 1 run scoreboard players operation @s CAL += @s TEMP

execute store result score @s TEMP run data get entity @s data.items[1].tag.RepairCost
execute store result score @s CAL run data get entity @s data.items[0].tag.RepairCost
scoreboard players operation @s TEMP > @s CAL
scoreboard players add @s TEMP 1
scoreboard players operation @s TEMP *= #2 TEMP
scoreboard players remove @s TEMP 1

execute store result entity @s data.result.tag.RepairCost int 1 run scoreboard players get @s TEMP