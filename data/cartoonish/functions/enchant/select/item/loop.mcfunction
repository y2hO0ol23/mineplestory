execute unless data entity @e[sort=nearest,limit=1,type=marker,tag=ct_enchant] data.items[1] run function cartoonish:enchant/select/item/push

tag @s remove ct_enchant_target
execute as @e[type=item,tag=ct_enchant_target,limit=1] at @s align xyz positioned ~0.5 ~ ~0.5 run function cartoonish:enchant/select/item/loop

