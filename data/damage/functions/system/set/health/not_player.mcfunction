execute store result score @s CALC run data get entity @s Health 10000
scoreboard players operation @s CALC -= @s damage_real

execute if score @s CALC matches 1.. store result entity @s Health float 0.0001 run scoreboard players get @s CALC

execute unless score @s CALC matches 1.. run kill @s
#execute unless score @s CALC matches 1.. run data merge entity @s {Health:0.0f}
