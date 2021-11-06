scoreboard players operation @s CALC /= #5 TEMP
scoreboard players operation @s TEMP /= #5 TEMP
execute unless score @s CALC matches 1 run function damage:calculation/dot/with5/main