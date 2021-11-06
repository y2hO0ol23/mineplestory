tag @s add ct_fix
summon armor_stand ~ ~ ~ {Tags:["ct_for_fix","ct_star_force_item"]}
#mainhand
item replace entity @e[type=armor_stand,tag=ct_star_force_item,limit=1] weapon.offhand from entity @s weapon.mainhand
execute if data entity @e[type=armor_stand,tag=ct_star_force_item,limit=1] HandItems[1].tag.ct_setup run function cartoonish:option/fix/run
item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=ct_star_force_item,limit=1] weapon.offhand
#head
item replace entity @e[type=armor_stand,tag=ct_star_force_item,limit=1] weapon.offhand from entity @s armor.head
execute if data entity @e[type=armor_stand,tag=ct_star_force_item,limit=1] HandItems[1].tag.ct_setup run function cartoonish:option/fix/run
item replace entity @s armor.head from entity @e[type=armor_stand,tag=ct_star_force_item,limit=1] weapon.offhand
#chest
item replace entity @e[type=armor_stand,tag=ct_star_force_item,limit=1] weapon.offhand from entity @s armor.chest
execute if data entity @e[type=armor_stand,tag=ct_star_force_item,limit=1] HandItems[1].tag.ct_setup run function cartoonish:option/fix/run
item replace entity @s armor.chest from entity @e[type=armor_stand,tag=ct_star_force_item,limit=1] weapon.offhand
#legs
item replace entity @e[type=armor_stand,tag=ct_star_force_item,limit=1] weapon.offhand from entity @s armor.legs
execute if data entity @e[type=armor_stand,tag=ct_star_force_item,limit=1] HandItems[1].tag.ct_setup run function cartoonish:option/fix/run
item replace entity @s armor.legs from entity @e[type=armor_stand,tag=ct_star_force_item,limit=1] weapon.offhand
#feet
item replace entity @e[type=armor_stand,tag=ct_star_force_item,limit=1] weapon.offhand from entity @s armor.feet
execute if data entity @e[type=armor_stand,tag=ct_star_force_item,limit=1] HandItems[1].tag.ct_setup run function cartoonish:option/fix/run
item replace entity @s armor.feet from entity @e[type=armor_stand,tag=ct_star_force_item,limit=1] weapon.offhand

advancement grant @s only cartoonish:option/move_weapon

kill @e[type=armor_stand,tag=ct_star_force_item]
tag @s remove ct_fix