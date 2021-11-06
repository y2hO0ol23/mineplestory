execute store result score @s TEMP run data get entity @s ActiveEffects[{Id:8b}].Amplifier
scoreboard players operation @s TEMP *= #upper TEMP
scoreboard players operation @s damage_real -= @s TEMP
execute unless score @s damage_real matches 0.. run scoreboard players set @s damage_real 0