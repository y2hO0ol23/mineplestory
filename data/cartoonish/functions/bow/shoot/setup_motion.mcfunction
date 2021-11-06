execute store result score @s TEMP run data get entity @s data.Motion[0] 6666666
scoreboard players operation @s TEMP *= @s ct_using_bow
execute store result entity @s data.Motion[0] double 0.0000000038 run scoreboard players get @s TEMP
execute store result score @s TEMP run data get entity @s data.Motion[1] 6666666
scoreboard players operation @s TEMP *= @s ct_using_bow
execute store result entity @s data.Motion[1] double 0.0000000038 run scoreboard players get @s TEMP
execute store result score @s TEMP run data get entity @s data.Motion[2] 6666666
scoreboard players operation @s TEMP *= @s ct_using_bow
execute store result entity @s data.Motion[2] double 0.0000000038 run scoreboard players get @s TEMP
scoreboard players set @s TEMP 0
