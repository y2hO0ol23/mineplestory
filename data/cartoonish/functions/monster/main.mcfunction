execute as @a[scores={ct_using_shield=16..}] at @s rotated ~ 0 positioned ^ ^ ^1 at @e[distance=..1,tag=!ct_no_hp] rotated as @e[tag=!ct_no_hp,sort=nearest,limit=1] positioned ^ ^ ^1 if entity @s[distance=..1] positioned ^ ^ ^-1 run tag @e[tag=!ct_no_hp,sort=nearest,limit=1] add ct_target 
execute as @e[tag=ct_target,limit=1] at @s rotated ~ 0 positioned ^ ^ ^1 at @p[scores={ct_using_shield=16..},distance=..1] facing entity @s feet facing ^ ^ ^-1 run function cartoonish:monster/public/shield

execute as @e[type=wither] at @s run function cartoonish:monster/wither/main