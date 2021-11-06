summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["set_durability"]}

execute if data entity @s Inventory[{Slot:103b}].id run function damage:system/set/durability/part/head
execute if data entity @s Inventory[{Slot:102b}].id unless entity @s[predicate=damage:nbt/inventory/102/elytra] run function damage:system/set/durability/part/chest
execute if data entity @s Inventory[{Slot:101b}].id run function damage:system/set/durability/part/legs
execute if data entity @s Inventory[{Slot:100b}].id run function damage:system/set/durability/part/feet

stopsound @s * minecraft:item.armor.equip_chain
stopsound @s * minecraft:item.armor.equip_diamond
stopsound @s * minecraft:item.armor.equip_elytra
stopsound @s * minecraft:item.armor.equip_generic
stopsound @s * minecraft:item.armor.equip_gold
stopsound @s * minecraft:item.armor.equip_iron
stopsound @s * minecraft:item.armor.equip_leather
stopsound @s * minecraft:item.armor.equip_netherite
stopsound @s * minecraft:item.armor.equip_turtle

kill @e[type=armor_stand,tag=set_durability]
tag @s remove this