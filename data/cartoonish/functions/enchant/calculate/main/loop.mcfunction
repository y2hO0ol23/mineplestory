data modify storage cartoonish:enchant enchantCmp set from storage cartoonish:enchant enchantUsed[0].id
execute store result score @s TEMP run data modify storage cartoonish:enchant enchantCmp set from storage cartoonish:enchant enchantTarget[0].id
execute if score @s TEMP matches 0 run function cartoonish:enchant/calculate/main/apply

scoreboard players operation @s TEMP = @s CNT
execute store result storage cartoonish:enchant enchantTarget[0].cnt int 1 run scoreboard players add @s TEMP 1
data modify storage cartoonish:enchant enchantTarget append from storage cartoonish:enchant enchantTarget[0]
data remove storage cartoonish:enchant enchantTarget[0]

function cartoonish:enchant/calculate/main