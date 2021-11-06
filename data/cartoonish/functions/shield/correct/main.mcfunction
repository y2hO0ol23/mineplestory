scoreboard players set @s TEMP 10
scoreboard players add @s TEMP 5
scoreboard players operation @s TEMP -= @s ct_using_shield
scoreboard players operation @s ct_shield_leap > @s TEMP
attribute @s minecraft:generic.movement_speed modifier add 63617274-7765-7368-6c65-7370656564 "shield leap" 6.2 multiply_base
playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 1 2