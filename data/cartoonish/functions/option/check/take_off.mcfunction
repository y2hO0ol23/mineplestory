scoreboard players set @s TEMP 0
execute if data entity @s SelectedItem{tag:{ct_setup:1}} run scoreboard players add @s TEMP 1
execute if data entity @s Inventory[{Slot:100b,tag:{ct_setup:1}}] run scoreboard players add @s TEMP 1
execute if data entity @s Inventory[{Slot:101b,tag:{ct_setup:1}}] run scoreboard players add @s TEMP 1
execute if data entity @s Inventory[{Slot:102b,tag:{ct_setup:1}}] run scoreboard players add @s TEMP 1
execute if data entity @s Inventory[{Slot:103b,tag:{ct_setup:1}}] run scoreboard players add @s TEMP 1

execute unless score @s TEMP = @s ct_able_itemslot run advancement grant @s only cartoonish:option/move_weapon