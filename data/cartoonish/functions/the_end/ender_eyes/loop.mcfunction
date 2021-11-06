summon item ~ ~ ~ {Tags:["this"],Item:{id:"minecraft:ender_eye",Count:1b},PickupDelay:0}
data modify entity @e[sort=nearest,limit=1,type=item,tag=this] Motion set from entity @s Motion
data modify entity @e[type=item,tag=this,limit=1] Owner set from entity @e[sort=nearest,limit=1,type=marker,tag=ct_get_uuid] data.uuid
tag @e[type=item,tag=this,limit=1] remove this

kill @s
execute as @e[type=eye_of_ender,limit=1] at @s run function cartoonish:the_end/ender_eyes/loop