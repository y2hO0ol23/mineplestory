summon item ~ ~ ~ {Tags:["this"],Motion:[0.0,0.1,0.0],Item:{id:"minecraft:grass_block",Count:1b}}
data modify entity @e[type=item,tag=this,limit=1] Item set from entity @s ArmorItems[3].tag.Data[0]
data remove entity @s ArmorItems[3].tag.Data[0]
tag @e[type=item,tag=this] remove this

execute if data entity @s ArmorItems[3].tag.Data[0] run function cartoonish:death/pickup/loop
