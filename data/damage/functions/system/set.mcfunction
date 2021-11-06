execute if data entity @s ActiveEffects[{Id:12b}].Amplifier run function damage:calculation/potion/id12

tag @s add this
scoreboard players set @s TEMP 1
scoreboard players operation @s BIN = @s damage_type
execute if score @s BIN matches 16.. run tag @s remove this
execute if score @s BIN matches 16.. run scoreboard players remove @s BIN 16
execute if score @s BIN matches 8.. run function damage:system/set/durability/blast
execute if score @s BIN matches 4.. run tag @s remove this
scoreboard players operation @s BIN %= #2 TEMP
execute if entity @s[type=player,tag=this] if score @s BIN matches 0 at @s run function damage:system/set/durability

execute if data entity @s ActiveEffects[{Id:8b}].Amplifier run function damage:calculation/potion/id8
execute if data entity @s ActiveEffects[{Id:11b}].Amplifier run function damage:calculation/potion/id11

function damage:system/set/health