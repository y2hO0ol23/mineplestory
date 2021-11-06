summon armor_stand ~ ~3333 ~ {Tags:["this"],Marker:1b}
execute if data entity @s ArmorItems[0] unless data entity @s ArmorItems[0].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s armor.feet
execute if data entity @s ArmorItems[0] unless data entity @s ArmorItems[0].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s ArmorItems[0] unless data entity @s ArmorItems[0].tag{ct_setup:1} run item replace entity @s armor.feet from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s ArmorItems[1] unless data entity @s ArmorItems[1].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s armor.legs
execute if data entity @s ArmorItems[1] unless data entity @s ArmorItems[1].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s ArmorItems[1] unless data entity @s ArmorItems[1].tag{ct_setup:1} run item replace entity @s armor.legs from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s ArmorItems[2] unless data entity @s ArmorItems[2].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s armor.chest
execute if data entity @s ArmorItems[2] unless data entity @s ArmorItems[2].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s ArmorItems[2] unless data entity @s ArmorItems[2].tag{ct_setup:1} run item replace entity @s armor.chest from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s ArmorItems[3] unless data entity @s ArmorItems[3].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s armor.head
execute if data entity @s ArmorItems[3] unless data entity @s ArmorItems[3].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s ArmorItems[3] unless data entity @s ArmorItems[3].tag{ct_setup:1} run item replace entity @s armor.head from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s HandItems[0] unless data entity @s HandItems[0].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s weapon.mainhand
execute if data entity @s HandItems[0] unless data entity @s HandItems[0].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s HandItems[0] unless data entity @s HandItems[0].tag{ct_setup:1} run item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s HandItems[1] unless data entity @s HandItems[1].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s weapon.offhand
execute if data entity @s HandItems[1] unless data entity @s HandItems[1].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s HandItems[1] unless data entity @s HandItems[1].tag{ct_setup:1} run item replace entity @s weapon.offhand from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand

tag @s remove ct_option_target
kill @e[type=armor_stand,tag=this,limit=1]
execute as @e[tag=ct_option_target,limit=1] at @s run function cartoonish:option/reset/entity