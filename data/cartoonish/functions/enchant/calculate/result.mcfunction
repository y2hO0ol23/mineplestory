data modify entity @s data.result set from entity @s data.items[0]

execute store result score @s TEMP run data get entity @s data.items[0].tag.RepairCost
execute store result score @s CAL run data get entity @s data.items[1].tag.RepairCost
scoreboard players operation @s TEMP += @s CAL
execute unless score @s TEMP matches 134217727.. run function cartoonish:enchant/calculate/main/under_val
execute if score @s TEMP matches 134217727.. run function cartoonish:enchant/calculate/main/over_val

data remove storage cartoonish:enchant enchantResult
function cartoonish:enchant/calculate/result/loop

execute if data storage cartoonish:enchant {itemType1:1} run data modify entity @s data.result.tag.Enchantments set from storage cartoonish:enchant enchantResult
execute if data storage cartoonish:enchant {itemType1:2} run data modify entity @s data.result.tag.StoredEnchantments set from storage cartoonish:enchant enchantResult
