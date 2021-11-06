execute store result score @s TEMP run data get entity @s ActiveEffects[{Id:11b}].Amplifier
execute if score @s TEMP matches 128.. run scoreboard players remove @s TEMP 256
execute if score @s TEMP matches 0.. run scoreboard players add @s TEMP 1
scoreboard players operation @s TEMP *= #2 TEMP

scoreboard players operation @s TEMP += #-10 TEMP
scoreboard players operation @s TEMP *= #-1 TEMP
execute unless score @s TEMP matches 0.. run scoreboard players set @s TEMP 0

scoreboard players set @s CALC 10
function damage:calculation/withtemp

