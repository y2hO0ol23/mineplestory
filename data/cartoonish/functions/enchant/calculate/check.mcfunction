summon armor_stand ~ ~3333 ~ {Tags:["ct_enchant"]}
data modify entity @e[type=armor_stand,limit=1,tag=ct_enchant] HandItems[0] set from entity @s data.items[0]
data modify entity @e[type=armor_stand,limit=1,tag=ct_enchant] HandItems[1] set from entity @s data.items[1]

#check type
item modify entity @e[type=armor_stand,limit=1,tag=ct_enchant] weapon.mainhand cartoonish:random_enchant
execute store success score @s TEMP if data entity @e[type=armor_stand,limit=1,tag=ct_enchant] HandItems[0].tag.Enchantments[0]
execute if data entity @e[type=armor_stand,limit=1,tag=ct_enchant] HandItems[0].tag.StoredEnchantments[0] run scoreboard players set @s TEMP 2

item modify entity @e[type=armor_stand,limit=1,tag=ct_enchant] weapon.offhand cartoonish:random_enchant
execute store success score @s CAL if data entity @e[type=armor_stand,limit=1,tag=ct_enchant] HandItems[1].tag.Enchantments[0]
execute if data entity @e[type=armor_stand,limit=1,tag=ct_enchant] HandItems[1].tag.StoredEnchantments[0] run scoreboard players set @s CAL 2

execute store result storage cartoonish:enchant itemType1 int 1 run scoreboard players get @s TEMP
execute store result storage cartoonish:enchant itemType2 int 1 run scoreboard players get @s CAL

#select enchants
data remove storage cartoonish:enchant enchantTarget
execute if data storage cartoonish:enchant {itemType1:1} run data modify storage cartoonish:enchant enchantTarget set from entity @s data.items[0].tag.Enchantments
execute if data storage cartoonish:enchant {itemType1:2} run data modify storage cartoonish:enchant enchantTarget set from entity @s data.items[0].tag.StoredEnchantments

data remove storage cartoonish:enchant enchantUsed
execute if data storage cartoonish:enchant {itemType2:1} run data modify storage cartoonish:enchant enchantUsed set from entity @s data.items[1].tag.Enchantments
execute if data storage cartoonish:enchant {itemType2:2} run data modify storage cartoonish:enchant enchantUsed set from entity @s data.items[1].tag.StoredEnchantments

scoreboard players set @s CNT 0
data modify storage cartoonish:enchant enchantCost set value 0

#book + book
execute if data storage cartoonish:enchant {itemType1:2} if data storage cartoonish:enchant {itemType2:2} run function cartoonish:enchant/calculate/main

#tool + book
execute if data storage cartoonish:enchant {itemType1:1} if data storage cartoonish:enchant {itemType2:2} run function cartoonish:enchant/calculate/main

#tool + tool
execute if data storage cartoonish:enchant {itemType1:1} if data storage cartoonish:enchant {itemType2:1} run function cartoonish:enchant/calculate/main

#tool + meterial

execute if data storage cartoonish:enchant enchantTarget[0].cnt run function cartoonish:enchant/calculate/result
kill @e[type=armor_stand,tag=ct_enchant]
    