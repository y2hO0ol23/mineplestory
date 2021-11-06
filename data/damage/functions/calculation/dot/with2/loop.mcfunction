scoreboard players operation @s CALC /= #2 TEMP
scoreboard players operation @s TEMP /= #2 TEMP
execute unless score @s CALC matches 1 run function damage:calculation/dot/with2/main