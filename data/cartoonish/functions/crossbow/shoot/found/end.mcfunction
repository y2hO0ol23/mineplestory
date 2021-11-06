execute unless score @s TEMP matches ..10 run scoreboard players set @s TEMP 10

summon marker ~ ~ ~ {Tags:["ct_crossbow_check_rotation"]}
####
tp @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_check_rotation] ~ ~ ~ facing ^-1 ^ ^10000
execute as @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_check_rotation] store result score @s ct_x run data get entity @s Rotation[0] 1000000
execute as @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_check_rotation] store result score @s ct_y run data get entity @s Rotation[1] 1000000
tp @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_check_rotation] ~ ~ ~ facing ^-1 ^ ^5.6713
execute as @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_check_rotation] store result score @s ct_x_rot_dist run data get entity @s Rotation[0] 1000000
execute as @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_check_rotation] store result score @s ct_y_rot_dist run data get entity @s Rotation[1] 1000000
execute as @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_check_rotation] run scoreboard players operation @s ct_x_rot_dist -= @s ct_x
execute as @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_check_rotation] run scoreboard players operation @s ct_y_rot_dist -= @s ct_y

execute as @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_check_rotation] unless score @s ct_x_rot_dist matches -180000000..180000000 run function cartoonish:crossbow/shoot/found/set_rotation
scoreboard players operation @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_check_rotation] ct_x_rot_dist /= @s TEMP
scoreboard players operation @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_check_rotation] ct_y_rot_dist /= @s TEMP
scoreboard players operation @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_check_rotation] CNT = @s TEMP
tp @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_check_rotation] ~ ~ ~ facing ^-1 ^ ^10000

execute as @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_check_rotation] run function cartoonish:crossbow/shoot/found/end/loop
####

####
tp @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_check_rotation] ~ ~ ~ facing ^1 ^ ^10000
execute as @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_check_rotation] store result score @s ct_x run data get entity @s Rotation[0] 1000000
execute as @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_check_rotation] store result score @s ct_y run data get entity @s Rotation[1] 1000000
tp @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_check_rotation] ~ ~ ~ facing ^1 ^ ^5.6713
execute as @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_check_rotation] store result score @s ct_x_rot_dist run data get entity @s Rotation[0] 1000000
execute as @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_check_rotation] store result score @s ct_y_rot_dist run data get entity @s Rotation[1] 1000000
execute as @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_check_rotation] run scoreboard players operation @s ct_x_rot_dist -= @s ct_x
execute as @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_check_rotation] run scoreboard players operation @s ct_y_rot_dist -= @s ct_y

execute as @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_check_rotation] unless score @s ct_x_rot_dist matches -180000000..180000000 run function cartoonish:crossbow/shoot/found/set_rotation
scoreboard players operation @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_check_rotation] ct_x_rot_dist /= @s TEMP
scoreboard players operation @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_check_rotation] ct_y_rot_dist /= @s TEMP
scoreboard players operation @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_check_rotation] CNT = @s TEMP
tp @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_check_rotation] ~ ~ ~ facing ^1 ^ ^10000

execute as @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_check_rotation] run function cartoonish:crossbow/shoot/found/end/loop
####
kill @e[type=marker,tag=ct_crossbow_check_rotation]

tag @s add ct_crossbow_detected