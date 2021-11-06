execute store result score @s CAL run data get entity @s Rotation[0] 1000000
scoreboard players operation @s CAL += @s ct_x_rot_dist
execute unless score @s CAL matches ..180000000 run scoreboard players remove @s CAL 360000000
execute unless score @s CAL matches -180000000.. run scoreboard players add @s CAL 360000000
execute store result entity @s Rotation[0] float 0.000001 run scoreboard players get @s CAL
execute store result score @s CAL run data get entity @s Rotation[1] 1000000
scoreboard players operation @s CAL += @s ct_y_rot_dist
execute store result entity @s Rotation[1] float 0.000001 run scoreboard players get @s CAL

execute rotated as @s if entity @e[tag=ct_new_projectile,tag=this,predicate=!cartoonish:nbt/shot_from_crossbow_0] run function cartoonish:crossbow/shoot/found/end/arrow
execute rotated as @s if entity @e[tag=ct_new_projectile,tag=this,predicate=!cartoonish:nbt/shot_at_angle_0] run function cartoonish:crossbow/shoot/found/end/rocket

scoreboard players remove @s CNT 1
execute if score @s CNT matches 2.. run function cartoonish:crossbow/shoot/found/end/loop
