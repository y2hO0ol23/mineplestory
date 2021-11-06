scoreboard players operation #max_area TEMP = #area_distance TEMP
scoreboard players operation #max_area TEMP *= #area_count TEMP
scoreboard players operation #max_area TEMP += #mid_area_distance TEMP

summon marker ~ ~ ~ {Tags:["ct_worldspawn","ct_in_check"]}
execute store result score #worldspawn_x TEMP run data get entity @e[type=marker,limit=1,tag=ct_worldspawn] Pos[0]
execute store result score #worldspawn_z TEMP run data get entity @e[type=marker,limit=1,tag=ct_worldspawn] Pos[2]