attribute @s minecraft:generic.movement_speed modifier remove 63617274-7765-7368-6c65-7370656564
execute if score @s ct_shield_leap matches -1 run function cartoonish:shield/correct/remove/dash
scoreboard players reset @s ct_shield_leap

execute as @p[scores={ct_shield_leap=..0}] at @s run function cartoonish:shield/correct/remove