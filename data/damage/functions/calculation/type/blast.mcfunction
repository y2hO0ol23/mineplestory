execute store result score @s CALC run data get entity @s Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:blast_protection"}].lvl
scoreboard players operation @s CALC *= #2 TEMP
scoreboard players operation @s TEMP -= @s CALC
execute store result score @s CALC run data get entity @s Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:blast_protection"}].lvl
scoreboard players operation @s CALC *= #2 TEMP
scoreboard players operation @s TEMP -= @s CALC
execute store result score @s CALC run data get entity @s Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:blast_protection"}].lvl
scoreboard players operation @s CALC *= #2 TEMP
scoreboard players operation @s TEMP -= @s CALC
execute store result score @s CALC run data get entity @s Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:blast_protection"}].lvl
scoreboard players operation @s CALC *= #2 TEMP
scoreboard players operation @s TEMP -= @s CALC

scoreboard players remove @s BIN 4
