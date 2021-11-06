execute store result score @s TEMP run data get entity @s Inventory[{Slot:-106b}].tag.Damage
execute store result score @s CAL run data get entity @s Inventory[{Slot:-106b}].tag.ct_break
execute if score @s TEMP = @s CAL run tag @s add ct_item_break
