scoreboard players add @s CNT 1
execute unless entity @s[tag=ct_apply_enchant] run function cartoonish:enchant/calculate/main/new
execute store result score @s TEMP run data get storage cartoonish:enchant enchantCost
execute store result score @s CAL run data get storage cartoonish:enchant enchantUsed[0].lvl
scoreboard players operation @s CAL *= #4 TEMP
execute store result storage cartoonish:enchant enchantCost int 1 run scoreboard players operation @s TEMP += @s CAL
data remove storage cartoonish:enchant enchantUsed[0]

tag @s remove ct_apply_enchant
tag @s add ct_enchant_next

