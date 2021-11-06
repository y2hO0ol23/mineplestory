summon armor_stand ~ ~ ~ {Tags:["this","ct_death_item"]}

execute as @p[scores={ct_death=1..},gamemode=!creative,gamemode=!spectator] at @s run function cartoonish:death/loop/main
scoreboard players reset @a[scores={ct_death=1..}] ct_death
kill @e[type=armor_stand,tag=ct_death_item,tag=this]
