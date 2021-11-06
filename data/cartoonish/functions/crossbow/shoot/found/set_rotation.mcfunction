execute unless score @s ct_x_rot_dist matches ..180000000 run scoreboard players remove @s ct_x_rot_dist 360000000
execute unless score @s ct_x_rot_dist matches -180000000.. run scoreboard players add @s ct_x_rot_dist 360000000
#scoreboard players operation @s ct_x_rot_dist *= #-1 TEMP