execute as @a at @s align xyz positioned ~0.5 ~ ~0.5 if entity @s[distance=..0.5] if block ~ ~-1 ~ #cartoonish:anvils if predicate cartoonish:nbt/on_ground_1 run tag @s add ct_over_the_anvil
execute as @p[tag=ct_over_the_anvil] at @s align xyz positioned ~0.5 ~ ~0.5 run function cartoonish:enchant/select/anvil
execute as @e[type=marker,tag=ct_enchant] at @s unless entity @e[distance=..0.5,type=marker,tag=ct_enchant,tag=this] run tag @s add ct_enchant_end
execute if entity @e[type=marker,tag=ct_enchant,tag=ct_enchant_end] run function cartoonish:enchant/reward/items
execute at @e[type=marker,tag=ct_enchant,tag=!this] run kill @e[distance=..0.5,type=marker,tag=ct_enchant,tag=this]
tag @e[type=marker,tag=ct_enchant,tag=this] remove this

execute at @e[type=marker,tag=ct_enchant] run tag @e[distance=..0.5,type=item,predicate=cartoonish:nbt/on_ground_1] add ct_enchant_target
execute if entity @e[type=item,tag=ct_enchant_target] run function cartoonish:enchant/select/item

execute as @e[type=marker,tag=ct_enchant] if data entity @s data.result at @s run function cartoonish:enchant/reward/result