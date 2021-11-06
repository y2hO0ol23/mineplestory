execute store result score @s TEMP run data get entity @s Inventory[{Slot:-106b}].tag.starForceLevel
scoreboard players add @s TEMP 1
execute store result score @s CNT run data get entity @s Inventory[{Slot:-106b}].tag.grade
execute if score @s CNT matches 0 run scoreboard players set @s CNT 1
scoreboard players operation @s CNT *= #5 TEMP
execute unless score @s TEMP <= @s CNT run tag @s remove ct_try_starforce
scoreboard players remove @s TEMP 1

scoreboard players operation @s TEMP /= #5 TEMP
scoreboard players add @s TEMP 1
scoreboard players operation @s TEMP *= #2 TEMP
execute store result score @s CAL run data get entity @s SelectedItem.Count
execute unless score @s TEMP <= @s CAL run tag @s remove ct_try_starforce

execute if entity @s[tag=ct_try_starforce] run function cartoonish:option/starforce/roll

tag @s remove ct_try_starforce
execute as @e[tag=ct_try_starforce,limit=1] run function cartoonish:option/starforce/loop