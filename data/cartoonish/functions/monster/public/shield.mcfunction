summon marker 0. 0. 0. {Tags:["ct_mst_motion"]}
execute positioned 0. 0. 0. run tp @e[type=marker,tag=ct_mst_motion,limit=1] ^ ^ ^0.4
data modify entity @s Motion set from entity @e[type=marker,tag=ct_mst_motion,limit=1] Pos
kill @e[type=marker,tag=ct_mst_motion,limit=1]

tag @s remove ct_target
execute as @e[tag=ct_target,limit=1] at @s rotated ~ 0 positioned ^ ^ ^1 at @p[scores={ct_using_shield=16..}] facing entity @s feet facing ^ ^ ^-1 run function cartoonish:monster/public/shield
