execute store result score @s TEMP run data get entity @s SelectedItemSlot
execute unless score @s TEMP = @s ct_hand_slot run advancement grant @s only cartoonish:option/move_weapon
scoreboard players operation @s ct_hand_slot = @s TEMP