summon armor_stand ~ ~3333 ~ {Tags:["this"],Marker:1b}
item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s weapon.mainhand
item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.offhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air
item replace entity @s weapon.mainhand with air

execute store result score @s CAL run data get entity @e[type=armor_stand,tag=this,limit=1] HandItems[0].Count
execute store result score @s TEMP run data get entity @e[type=armor_stand,tag=this,limit=1] HandItems[1].Count
scoreboard players operation @s CAL < @s TEMP

execute store result score @s TEMP run data get entity @e[type=armor_stand,tag=this,limit=1] HandItems[1].tag.grade
scoreboard players add @s TEMP 1
execute if score @s TEMP matches 1 run advancement grant @s only minecraft:cube/upgrade/rare
execute if score @s TEMP matches 2 run advancement grant @s only minecraft:cube/upgrade/epic
execute if score @s TEMP matches 3 run advancement grant @s only minecraft:cube/upgrade/unique
execute if score @s TEMP matches 4 run advancement grant @s only minecraft:cube/upgrade/legendary
execute anchored eyes positioned ^ ^ ^ run function cartoonish:option/reward/cube

execute store result score @s TEMP run data get entity @e[type=armor_stand,tag=this,limit=1] HandItems[0].Count
scoreboard players operation @s TEMP -= @s CAL
execute if score @s TEMP matches 1.. unless entity @s[gamemode=creative] store result entity @e[type=armor_stand,tag=this,limit=1] HandItems[0].Count byte 1 run scoreboard players get @s TEMP
execute if score @s TEMP matches 1.. run item replace entity @s weapon.offhand from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute store result score @s TEMP run data get entity @e[type=armor_stand,tag=this,limit=1] HandItems[1].Count
scoreboard players operation @s TEMP -= @s CAL
execute if score @s TEMP matches 1.. unless entity @s[gamemode=creative] store result entity @e[type=armor_stand,tag=this,limit=1] HandItems[1].Count byte 1 run scoreboard players get @s TEMP
execute if score @s TEMP matches 1.. run item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=this,limit=1] weapon.offhand
kill @e[type=armor_stand,tag=this,limit=1]

playsound minecraft:block.anvil.use player @a ~ ~ ~ 1 2 0

tag @s remove ct_upgrade_trigger
execute as @a[predicate=!cartoonish:nbt/selected_item/grade_4,predicate=cartoonish:nbt/selected_item/cube,predicate=cartoonish:nbt/selected_item/ancient_debris,tag=ct_upgrade_trigger,limit=1] at @s run function cartoonish:option/reward/upgrade
