tag @s remove ct_enchant_next

execute store result score @s TEMP run data get storage cartoonish:enchant enchantTarget[0].cnt
execute if score @s TEMP = @s CNT unless data storage cartoonish:enchant enchantTarget[0] run scoreboard players add @s TEMP 1
execute unless score @s TEMP = @s CNT run function cartoonish:enchant/calculate/main/end

execute unless entity @s[tag=ct_enchant_next] if data storage cartoonish:enchant enchantUsed[0] run function cartoonish:enchant/calculate/main/loop
execute if entity @s[tag=ct_enchant_next] if data storage cartoonish:enchant enchantUsed[0] run function cartoonish:enchant/calculate/main
