execute unless score @s TEMP matches 0 run function damage:calculation/dot/main
scoreboard players operation @s damage_real /= @s CALC
scoreboard players operation @s damage_real *= @s TEMP