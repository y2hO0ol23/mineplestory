scoreboard players set @s TEMP 0
execute unless data entity @s ArmorItems[0].Count run scoreboard players add @s TEMP 1
execute unless data entity @s ArmorItems[1].Count run scoreboard players add @s TEMP 2
execute unless data entity @s ArmorItems[2].Count run scoreboard players add @s TEMP 4
execute unless data entity @s ArmorItems[3].Count run scoreboard players add @s TEMP 8
execute unless score @s TEMP matches 15 run tag @s add ct_can_drop_item
execute unless data entity @s HandItems[0].Count unless entity @s[type=villager] run scoreboard players add @s TEMP 16

scoreboard players set @s random 243
function random:generate
execute unless entity @s[type=#cartoonish:no_hand_item] if score @s TEMP matches 16.. if score @s random_data matches 81..187 run loot replace entity @s weapon.mainhand fish cartoonish:armor/hand ~ ~ ~ mainhand
execute unless entity @s[type=#cartoonish:no_hand_item] if score @s TEMP matches 16.. if score @s random_data matches 135..187 if entity @e[distance=0..,tag=ct_in_the_nether] run item replace entity @s weapon.mainhand with golden_pickaxe
execute if score @s random_data matches 81.. run scoreboard players remove @s random_data 81
execute if score @s random_data matches 81.. run scoreboard players remove @s random_data 81
execute if score @s[tag=!ct_can_drop_item] TEMP matches 16.. if data entity @s HandItems[0].Count run data modify entity @s HandDropChances[0] set value 0.0f
execute if score @s TEMP matches 16.. run scoreboard players remove @s TEMP 16
execute if score @s TEMP matches 8.. if score @s random_data matches 27..62 run loot replace entity @s armor.head fish cartoonish:armor/head ~ ~ ~ mainhand
execute if score @s TEMP matches 8.. if score @s random_data matches 45..62 if entity @e[distance=0..,tag=ct_in_the_nether] run item replace entity @s armor.head with golden_helmet
execute if score @s random_data matches 27.. run scoreboard players remove @s random_data 27
execute if score @s random_data matches 27.. run scoreboard players remove @s random_data 27
execute if score @s[tag=!ct_can_drop_item] TEMP matches 8.. if data entity @s ArmorItems[3].Count run data modify entity @s ArmorDropChances[3] set value 0.0f
execute if score @s TEMP matches 8.. run scoreboard players remove @s TEMP 8
execute if score @s TEMP matches 4.. if score @s random_data matches 9..20 run loot replace entity @s armor.chest fish cartoonish:armor/chest ~ ~ ~ mainhand
execute if score @s TEMP matches 4.. if score @s random_data matches 15..20 if entity @e[distance=0..,tag=ct_in_the_nether] run item replace entity @s armor.chest with golden_chestplate
execute if score @s random_data matches 9.. run scoreboard players remove @s random_data 9
execute if score @s random_data matches 9.. run scoreboard players remove @s random_data 9
execute if score @s[tag=!ct_can_drop_item] TEMP matches 4.. if data entity @s ArmorItems[2].Count run data modify entity @s ArmorDropChances[2] set value 0.0f
execute if score @s TEMP matches 4.. run scoreboard players remove @s TEMP 4
execute if score @s TEMP matches 2.. if score @s random_data matches 3..6 run loot replace entity @s armor.legs fish cartoonish:armor/legs ~ ~ ~ mainhand
execute if score @s TEMP matches 2.. if score @s random_data matches 5..6 if entity @e[distance=0..,tag=ct_in_the_nether] run item replace entity @s armor.legs with golden_leggings
execute if score @s random_data matches 3.. run scoreboard players remove @s random_data 3
execute if score @s random_data matches 3.. run scoreboard players remove @s random_data 3
execute if score @s[tag=!ct_can_drop_item] TEMP matches 2.. if data entity @s ArmorItems[1].Count run data modify entity @s ArmorDropChances[1] set value 0.0f
execute if score @s TEMP matches 2.. run scoreboard players remove @s TEMP 2
execute if score @s TEMP matches 1.. if score @s random_data matches 0..1 run loot replace entity @s armor.feet fish cartoonish:armor/feet ~ ~ ~ mainhand
execute if score @s TEMP matches 1.. if score @s random_data matches 1 if entity @e[distance=0..,tag=ct_in_the_nether] run item replace entity @s armor.feet with golden_boots
#execute if score @s random_data matches 1.. run scoreboard players remove @s random_data 1
#execute if score @s random_data matches 1.. run scoreboard players remove @s random_data 1
execute if score @s TEMP matches 1.. if data entity @s ArmorItems[0].Count run data modify entity @s ArmorDropChances[0] set value 0.0f
#execute if score @s TEMP matches 1.. run scoreboard players remove @s TEMP 1

scoreboard players set @s random 32
function random:generate
execute if score @s random_data matches 16.. run data modify entity @s HandItems[0].tag.Enchantments set value []
execute if score @s random_data matches 16.. run item modify entity @s weapon.mainhand cartoonish:random_enchant
execute if score @s random_data matches 16.. run scoreboard players remove @s random_data 16
execute if score @s random_data matches 8.. run data modify entity @s ArmorItems[3].tag.Enchantments set value []
execute if score @s random_data matches 8.. run item modify entity @s armor.head cartoonish:random_enchant
execute if score @s random_data matches 8.. run scoreboard players remove @s random_data 8
execute if score @s random_data matches 4.. run data modify entity @s ArmorItems[2].tag.Enchantments set value []
execute if score @s random_data matches 4.. run item modify entity @s armor.chest cartoonish:random_enchant
execute if score @s random_data matches 4.. run scoreboard players remove @s random_data 4
execute if score @s random_data matches 2.. run data modify entity @s ArmorItems[1].tag.Enchantments set value []
execute if score @s random_data matches 2.. run item modify entity @s armor.legs cartoonish:random_enchant
execute if score @s random_data matches 2.. run scoreboard players remove @s random_data 2
execute if score @s random_data matches 1.. run data modify entity @s ArmorItems[0].tag.Enchantments set value []
execute if score @s random_data matches 1.. run item modify entity @s armor.feet cartoonish:random_enchant
