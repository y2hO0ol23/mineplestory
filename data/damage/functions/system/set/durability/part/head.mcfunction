item replace entity @e[sort=nearest,limit=1,tag=set_durability,type=armor_stand] armor.head from entity @s armor.head

execute store result score @s CALC run data get entity @e[sort=nearest,limit=1,tag=set_durability,type=armor_stand] ArmorItems[3].tag.Damage
execute store result score @s random run data get entity @s Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
scoreboard players add @s random 1
execute unless data entity @s Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl run scoreboard players set @s random 1
function random:generate
execute if score @s random_data matches 0 run scoreboard players operation @s CALC += @s TEMP
execute store result entity @e[sort=nearest,limit=1,tag=set_durability,type=armor_stand] ArmorItems[3].tag.Damage int 1 run scoreboard players get @s CALC

item replace entity @s armor.head from entity @e[sort=nearest,limit=1,tag=set_durability,type=armor_stand] armor.head

item modify entity @e[sort=nearest,limit=1,tag=set_durability,type=armor_stand] armor.head damage:use_all
execute store result score @s BIN run data get entity @e[sort=nearest,limit=1,tag=set_durability,type=armor_stand] ArmorItems[3].tag.Damage
execute if data entity @e[sort=nearest,limit=1,tag=set_durability,type=armor_stand] ArmorItems[3].tag.Damage if score @s BIN <= @s CALC run item replace entity @s armor.head with air
execute if score @s BIN <= @s CALC run playsound minecraft:entity.item.break player @a ~ ~ ~ 1 1 0