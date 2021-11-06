function cartoonish:area/set/level/set_max
execute in minecraft:the_nether run summon marker 0 0 0 {Tags:["ct_in_the_nether","ct_in_check"]}
execute in the_end run summon marker 0 0 0 {Tags:["ct_in_the_end","ct_in_check"]}
#execute as @e[tag=!ct_no_hp,tag=!ct_check_area,type=!player,limit=1] at @s run function cartoonish:area/set/level/main
execute as @e[tag=!ct_no_hp,tag=!ct_check_area,type=!player] at @s run function cartoonish:area/set/level/main
kill @e[tag=ct_in_check,type=marker]
