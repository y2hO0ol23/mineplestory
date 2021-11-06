
summon armor_stand ~ ~-1.38 ~ {Tags:["this","ct_death_mark"],ArmorItems:[{},{},{},{id:"minecraft:chest",Count:1b,tag:{Data:[]}}],Invisible:1b,Marker:1b}
data modify entity @e[tag=this,tag=ct_death_mark,type=armor_stand,limit=1] Rotation set from entity @s Rotation

item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s weapon.offhand
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s weapon.offhand with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.0
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.0 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.1
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.1 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.2
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.2 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.3
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.3 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.4
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.4 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.5
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.5 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.6
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.6 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.7
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.7 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.8
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.8 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.9
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.9 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.10
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.10 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.11
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.11 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.12
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.12 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.13
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.13 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.14
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.14 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.15
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.15 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.16
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.16 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.17
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.17 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.18
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.18 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.19
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.19 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.20
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.20 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.21
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.21 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.22
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.22 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.23
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.23 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.24
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.24 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.25
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.25 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.26
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.26 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.27
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.27 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.28
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.28 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.29
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.29 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.30
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.30 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.31
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.31 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.32
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.32 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.33
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.33 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.34
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.34 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s container.35
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s container.35 with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s armor.feet
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s armor.feet with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s armor.legs
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s armor.legs with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s armor.chest
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s armor.chest with air
item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s armor.head
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s armor.head with air

data modify entity @e[tag=this,type=armor_stand,tag=ct_death_mark,limit=1] ArmorItems[3].tag.Owner set from entity @s UUID
execute as @e[tag=this,type=armor_stand,tag=ct_death_mark] unless data entity @s ArmorItems[3].tag.Data[0] run kill @s

tag @s add this
execute if entity @e[tag=this,type=armor_stand,tag=ct_death_mark] as @e[type=armor_stand,tag=ct_death_mark,tag=!this] run function cartoonish:death/loop/remove_last
tag @s remove this

tag @e[tag=this,type=armor_stand,tag=ct_death_mark] remove this
scoreboard players reset @s ct_death
execute as @p[scores={ct_death=1..},gamemode=!creative,gamemode=!spectator] at @s run function cartoonish:death/loop/main