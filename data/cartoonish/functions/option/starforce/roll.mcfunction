item replace entity @e[tag=ct_star_force_item,type=armor_stand,limit=1] weapon.mainhand from entity @s weapon.mainhand
item replace entity @e[tag=ct_star_force_item,type=armor_stand,limit=1] weapon.offhand from entity @s weapon.offhand

execute unless entity @s[gamemode=creative] store result entity @e[tag=ct_star_force_item,type=armor_stand,limit=1] HandItems[0].Count byte 1 run scoreboard players operation @s CAL -= @s TEMP
execute if score @s CAL matches 0 run item replace entity @e[tag=ct_star_force_item,type=armor_stand,limit=1] weapon.mainhand with air
execute store result score @s TEMP run data get entity @s Inventory[{Slot:-106b}].tag.starForceLevel
function cartoonish:option/starforce/get_ratio/start

scoreboard players set @s random 100
function random:generate
#success
execute store result score @s TEMP run data get storage cartoonish:option/table starforceRatio[0]
execute if score @s random_data matches 0.. if score @s random_data < @s TEMP run function cartoonish:option/starforce/result/success
scoreboard players operation @s random_data -= @s TEMP
#failed
execute store result score @s TEMP run data get storage cartoonish:option/table starforceRatio[1]
execute if score @s random_data matches 0.. if score @s random_data < @s TEMP run function cartoonish:option/starforce/result/failed
scoreboard players operation @s random_data -= @s TEMP
#degradation
execute store result score @s TEMP run data get storage cartoonish:option/table starforceRatio[2]
execute if score @s random_data matches 0.. if score @s random_data < @s TEMP run function cartoonish:option/starforce/result/degradation
scoreboard players operation @s random_data -= @s TEMP
#destroy
execute store result score @s TEMP run data get storage cartoonish:option/table starforceRatio[3]
execute if score @s random_data matches 0.. if score @s random_data < @s TEMP run function cartoonish:option/starforce/result/destroy
scoreboard players operation @s random_data -= @s TEMP

function cartoonish:option/starforce/set_outputs

item replace entity @s weapon.mainhand from entity @e[tag=ct_star_force_item,type=armor_stand,limit=1] weapon.offhand
item replace entity @s weapon.offhand from entity @e[tag=ct_star_force_item,type=armor_stand,limit=1] weapon.mainhand