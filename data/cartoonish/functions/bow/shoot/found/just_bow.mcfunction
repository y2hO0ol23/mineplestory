execute unless score @s ct_using_bow matches 0.. run scoreboard players set @s ct_using_bow 0
execute unless score @s ct_using_bow matches ..20 run scoreboard players set @s ct_using_bow 20

execute if entity @s[type=player,tag=ct_bow_on_left] store result score @s TEMP run data get entity @s Inventory[{Slot:-106b}].tag.optionTable[14]
execute if entity @s[type=player,tag=!ct_bow_on_left] store result score @s TEMP run data get entity @s SelectedItem.tag.optionTable[14]
execute if entity @s[type=!player,tag=!ct_option_from_left] store result score @s TEMP run data get entity @s HandItems[0].tag.optionTable[14]
execute if entity @s[type=!player,tag=ct_option_from_left] store result score @s TEMP run data get entity @s HandItems[1].tag.optionTable[14]

execute if score @s TEMP matches 45.. run scoreboard players set @s TEMP 45
scoreboard players operation @s ct_using_bow *= @s TEMP
scoreboard players operation @s ct_using_bow *= #20 TEMP
scoreboard players operation @s ct_using_bow /= #15 TEMP
scoreboard players operation @s ct_using_bow /= #45 TEMP
scoreboard players operation @s ct_using_bow *= @s ct_sf_weapon
scoreboard players operation @s ct_using_bow /= #100 TEMP

scoreboard players set @s TEMP -1
execute if data entity @s ActiveEffects[{Id:5b}].Amplifier store result score @s TEMP run data get entity @s ActiveEffects[{Id:5b}].Amplifier
scoreboard players add @s TEMP 1
scoreboard players operation @s TEMP *= #20 TEMP
scoreboard players operation @s ct_using_bow += @s TEMP

scoreboard players set @s TEMP -1
execute if data entity @s ActiveEffects[{Id:18b}].Amplifier store result score @s TEMP run data get entity @s ActiveEffects[{Id:18b}].Amplifier
scoreboard players add @s TEMP 1
scoreboard players operation @s TEMP *= #26 TEMP
scoreboard players operation @s ct_using_bow -= @s TEMP

scoreboard players add @s ct_using_bow 40

execute unless score @s ct_using_bow matches 0.. run scoreboard players set @s ct_using_bow 0
execute unless score @s ct_using_bow matches ..100 run scoreboard players set @s ct_using_bow 100

summon marker ~ ~ ~ {Tags:["ct_set_motion"]}
scoreboard players operation @e[type=marker,tag=ct_set_motion] ct_using_bow = @s ct_using_bow
data modify entity @e[type=marker,tag=ct_set_motion,limit=1] data.Motion set from entity @e[limit=1,type=#minecraft:arrows,tag=this] Motion
execute as @e[type=marker,tag=ct_set_motion] run function cartoonish:bow/shoot/setup_motion
data modify entity @e[limit=1,type=#minecraft:arrows,tag=this] Motion set from entity @e[type=marker,tag=ct_set_motion,limit=1] data.Motion
kill @e[type=marker,tag=ct_set_motion]
