summon marker ~ ~ ~ {Tags:["ct_shield_cause_of_dash"]}
execute store result entity @e[type=marker,tag=ct_shield_cause_of_dash,limit=1] Pos[0] double 0.0143 run scoreboard players get @s ct_shield_x
execute store result entity @e[type=marker,tag=ct_shield_cause_of_dash,limit=1] Pos[1] double 0.0143 run scoreboard players get @s ct_shield_y
execute store result entity @e[type=marker,tag=ct_shield_cause_of_dash,limit=1] Pos[2] double 0.0143 run scoreboard players get @s ct_shield_z
execute at @e[type=marker,tag=ct_shield_cause_of_dash,limit=1] run tp @s ~ ~ ~
tp @s @s
kill @e[type=marker,tag=ct_shield_cause_of_dash,limit=1]