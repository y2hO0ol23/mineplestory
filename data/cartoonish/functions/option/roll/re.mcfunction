data modify storage cartoonish:option/table target set from entity @s Inventory[{Slot:-106b}]
data modify storage cartoonish:option/table cubeGrade set from entity @s SelectedItem.tag.grade
execute if data storage cartoonish:option/table {cubeGrade:0} run scoreboard players add @s ct_cube1_cnt 1
execute if data storage cartoonish:option/table {cubeGrade:1} run scoreboard players add @s ct_cube2_cnt 1
execute if data storage cartoonish:option/table {cubeGrade:2} run scoreboard players add @s ct_cube3_cnt 1
execute if data storage cartoonish:option/table {cubeGrade:3} run scoreboard players add @s ct_cube4_cnt 1
execute if data storage cartoonish:option/table {cubeGrade:4} run scoreboard players add @s ct_cube5_cnt 1
function cartoonish:option/roll
summon armor_stand ~ ~ ~ {Tags:["this"],Marker:1b}
item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s weapon.mainhand
item replace entity @s weapon.offhand with air
execute store result score @s TEMP run data get entity @e[type=armor_stand,tag=this,limit=1] HandItems[0].Count
execute unless entity @s[gamemode=creative] store result entity @e[type=armor_stand,tag=this,limit=1] HandItems[0].Count byte 1 run scoreboard players remove @s TEMP 1
execute if score @s TEMP matches 1.. run item replace entity @s weapon.offhand from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
data modify entity @e[type=armor_stand,tag=this,limit=1] HandItems[0] set from storage cartoonish:option/table target
item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
kill @e[type=armor_stand,tag=this,limit=1]

execute at @s run playsound minecraft:block.chest.locked player @a ~ ~ ~ 1 2 0

tag @s remove ct_roll_trigger
execute as @a[predicate=cartoonish:nbt/selected_item/cube,predicate=cartoonish:nbt/inventory/m106/ct_setup,tag=ct_roll_trigger,limit=1] run function cartoonish:option/roll/re
