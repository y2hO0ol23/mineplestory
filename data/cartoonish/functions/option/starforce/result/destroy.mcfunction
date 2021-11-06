execute store success score @s TEMP run clear @s heart_of_the_sea 1
execute if score @s TEMP matches 0 run function cartoonish:option/starforce/result/destroy/apply

execute at @s run playsound minecraft:entity.turtle.egg_break player @a ~ ~ ~ 1 0.75 0