scoreboard players operation @s BIN = @s damage_type
execute if score @s BIN matches 16.. run scoreboard players remove @s BIN 16
execute if score @s BIN matches 8.. run scoreboard players remove @s BIN 8
execute if score @s BIN matches 4.. run scoreboard players remove @s BIN 4

execute if score @s BIN matches 2.. run scoreboard players set @s damage_real 0

