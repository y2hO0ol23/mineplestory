scoreboard players set @s random 1000
function random:generate

execute if entity @s[type=player,tag=ct_bow_on_left] store result score @s CAL run data get entity @s Inventory[{Slot:-106b}].tag.statTable[2]
execute if entity @s[type=player,tag=!ct_bow_on_left] store result score @s CAL run data get entity @s SelectedItem.tag.statTable[2]
execute if entity @s[type=!player,tag=!ct_option_from_left] store result score @s CAL run data get entity @s HandItems[0].tag.statTable[2]
execute if entity @s[type=!player,tag=ct_option_from_left] store result score @s CAL run data get entity @s HandItems[1].tag.statTable[2]
scoreboard players add @s CAL 100

execute if score @s random_data < @s CAL run function cartoonish:bow/shoot/found/crit/apply