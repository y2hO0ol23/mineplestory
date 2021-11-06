execute as @a at @s anchored eyes run summon marker ^ ^ ^ {Tags:["ct_get_uuid"]}
execute as @a at @s anchored eyes positioned ^ ^ ^ run data modify entity @e[type=marker,sort=nearest,limit=1,tag=ct_get_uuid] data.uuid set from entity @s UUID
execute as @e[type=eye_of_ender,limit=1] at @s run function cartoonish:the_end/ender_eyes/loop
kill @e[type=marker,tag=ct_get_uuid]