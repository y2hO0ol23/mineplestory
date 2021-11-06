execute store result score @s CALC run data get entity @s Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:feather_falling"}].lvl
scoreboard players operation @s CALC *= #3 TEMP
scoreboard players operation @s TEMP -= @s CALC

scoreboard players remove @s BIN 16