execute as @e[type=#minecraft:arrows,predicate=cartoonish:nbt/has_been_shot_0] if data entity @s Owner run tag @s add ct_new_arrow
execute as @e[tag=ct_new_arrow,limit=1] run function cartoonish:bow/shoot/found/loop
