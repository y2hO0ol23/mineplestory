function cartoonish:option/fix/main
scoreboard players reset @s fix
execute as @a[scores={fix=1..},limit=1] run function cartoonish:option/fix