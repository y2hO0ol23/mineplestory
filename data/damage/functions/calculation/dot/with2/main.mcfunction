scoreboard players operation @s BIN = @s TEMP
scoreboard players operation @s BIN %= #2 TEMP
execute if score @s BIN matches 0 run function damage:calculation/dot/with2/loop