execute as @e[type=#minecraft:arrows,predicate=cartoonish:nbt/has_been_shot_0,predicate=!cartoonish:nbt/shot_from_crossbow_0] if data entity @s Owner run tag @s add ct_new_projectile
execute as @e[type=firework_rocket,predicate=!cartoonish:nbt/shot_at_angle_0,predicate=cartoonish:nbt/has_been_shot_0] if data entity @s Owner run tag @s add ct_new_projectile

execute as @e[tag=ct_new_projectile,limit=1,sort=random] run function cartoonish:crossbow/shoot/found/loop
tag @e[tag=ct_crossbow_detected] remove ct_crossbow_detected