data modify entity @e[tag=ct_star_force_item,type=armor_stand,limit=1] HandItems[1].tag.starForceLevel set value 5
item modify entity @e[tag=ct_star_force_item,type=armor_stand,limit=1] weapon.offhand cartoonish:use_all
execute as @e[tag=ct_star_force_item,type=armor_stand,limit=1] run data modify entity @s HandItems[1].tag.ct_break set from entity @s HandItems[1].tag.Damage
