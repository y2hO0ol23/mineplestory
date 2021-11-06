execute store result score @s ct_mst_mxhp run attribute @s generic.max_health get 100
scoreboard players operation @s ct_mst_mxhp /= #2 TEMP
scoreboard players set @s ct_patern 0
scoreboard players set @s ct_patern_term 0

team join wither @s

tag @s add ct_mst_set