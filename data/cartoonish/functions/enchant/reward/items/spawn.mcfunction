summon item ~ ~ ~ {Tags:["this"],Item:{id:"minecraft:grass_block",Count:1b}}
data modify entity @e[type=item,tag=this,limit=1,sort=nearest] Item set from storage cartoonish:enchant item
tag @e[type=item,tag=this,limit=1,sort=nearest] remove this