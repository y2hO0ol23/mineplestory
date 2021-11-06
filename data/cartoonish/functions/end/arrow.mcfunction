execute store result score #ct_arrow_cal_life TEMP if entity @e[type=#arrows,predicate=cartoonish:nbt/in_ground_1,predicate=!cartoonish:nbt/pickup/1]
execute unless score #ct_arrow_cal_life TEMP matches ..45000 run scoreboard players set #ct_arrow_cal_life TEMP 45000
scoreboard players operation #ct_arrow_cal_life TEMP *= #ct_arrow_cal_life TEMP
scoreboard players operation #ct_arrow_cal_life TEMP /= #10000 TEMP
execute as @e[type=#arrows,predicate=cartoonish:nbt/in_ground_1,predicate=!cartoonish:nbt/pickup/1] store result score @s TEMP run data get entity @s life
execute as @e[type=#arrows,predicate=cartoonish:nbt/in_ground_1,predicate=!cartoonish:nbt/pickup/1] run scoreboard players operation @s TEMP += #ct_arrow_cal_life TEMP
execute as @e[type=#arrows,predicate=cartoonish:nbt/in_ground_1,predicate=!cartoonish:nbt/pickup/1] store result entity @s life short 1 run scoreboard players get @s TEMP