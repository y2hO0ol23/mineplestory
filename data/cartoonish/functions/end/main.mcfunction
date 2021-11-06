#execute as @e[tag=!ct_no_hp] run scoreboard players operation @s ct_HP = @s ct_HP_cmp

execute if entity @e[type=#arrows,predicate=cartoonish:nbt/in_ground_1,predicate=!cartoonish:nbt/pickup/1] run function cartoonish:end/arrow

tag @a[tag=ct_using_shield] remove ct_using_shield
tag @e[tag=ct_option_target] add ct_notNew