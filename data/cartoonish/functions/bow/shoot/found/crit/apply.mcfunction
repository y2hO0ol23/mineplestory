execute if entity @s[type=player,tag=ct_bow_on_left] store result score @s CAL run data get entity @s Inventory[{Slot:-106b}].tag.statTable[8]
execute if entity @s[type=player,tag=!ct_bow_on_left] store result score @s CAL run data get entity @s SelectedItem.tag.statTable[8]
execute if entity @s[type=!player,tag=!ct_option_from_left] store result score @s CAL run data get entity @s HandItems[0].tag.statTable[8]
execute if entity @s[type=!player,tag=ct_option_from_left] store result score @s CAL run data get entity @s HandItems[1].tag.statTable[8]
scoreboard players add @s CAL 2000

scoreboard players operation @s TEMP *= @s CAL
scoreboard players operation @s TEMP /= #1000 TEMP
data merge entity @e[tag=this,type=#minecraft:arrows,limit=1] {crit:1b}