summon wither_skeleton ~ ~ ~ {Tags:["this"],HandItems:[{id:"minecraft:stone_sword",Count:1b},{}]}
summon wither_skeleton ~ ~ ~ {Tags:["this"],HandItems:[{id:"minecraft:stone_sword",Count:1b},{}]}
summon wither_skeleton ~ ~ ~ {Tags:["this"],HandItems:[{id:"minecraft:stone_sword",Count:1b},{}]}
scoreboard players operation @e[tag=this,type=wither_skeleton] ct_entity_level = #area_count TEMP
team join wither @e[tag=this,type=wither_skeleton]
data modify entity @s Motion set value [0.0,3.0,0.0]