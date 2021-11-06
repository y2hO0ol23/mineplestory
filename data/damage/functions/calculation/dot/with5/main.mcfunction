scoreboard players operation @s BIN = @s TEMP
scoreboard players operation @s BIN %= #5 TEMP
execute if score @s BIN matches 0 run function damage:calculation/dot/with5/loop