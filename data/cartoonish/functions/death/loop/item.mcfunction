data modify entity @e[tag=this,tag=ct_death_mark,type=armor_stand,limit=1] ArmorItems[3].tag.Data append from entity @s HandItems[0]

#summon item ~ ~ ~ {Tags:["this","ct_death_item"],Item:{id:"minecraft:grass_block",Count:1b}}
#data modify entity @e[type=item,tag=ct_death_item,tag=this,limit=1] Item set from entity @s HandItems[0]
#tag @e[type=item,tag=ct_death_item,tag=this,limit=1] remove this