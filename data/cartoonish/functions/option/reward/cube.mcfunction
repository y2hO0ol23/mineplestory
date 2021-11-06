#TEMP = grade, CAL = count
execute unless score @s TEMP matches 0..4 run scoreboard players set @s TEMP 4
execute unless score @s CAL matches ..64 run scoreboard players set @s CAL 64
execute unless score @s CAL matches 1.. run scoreboard players set @s CAL 1
summon item ~ ~ ~ {Tags:["this"],PickupDelay:0s,Item:{id:"minecraft:structure_block",Count:1,tag:{HideFlags:1,CUBE:1,grade:0,Enchantments:[{id:"minecraft:unbreaking",lvl:0}],BlockEntityTag:{rotation:"NONE",mirror:"NONE",mode:"DATA"}}}}
execute store result entity @e[sort=nearest,limit=1,type=item,tag=this] Item.tag.grade int 1 run scoreboard players get @s TEMP
execute store result entity @e[sort=nearest,limit=1,type=item,tag=this] Item.Count int 1 run scoreboard players get @s CAL
data modify entity @e[sort=nearest,limit=1,type=item,tag=this] Owner set from entity @s UUID
execute if score @s TEMP matches 0 run data modify entity @e[sort=nearest,limit=1,type=item,tag=this] Item.tag.display set from storage cartoonish:option/table cube_output[0]
execute if score @s TEMP matches 1 run data modify entity @e[sort=nearest,limit=1,type=item,tag=this] Item.tag.display set from storage cartoonish:option/table cube_output[1]
execute if score @s TEMP matches 2 run data modify entity @e[sort=nearest,limit=1,type=item,tag=this] Item.tag.display set from storage cartoonish:option/table cube_output[2]
execute if score @s TEMP matches 3 run data modify entity @e[sort=nearest,limit=1,type=item,tag=this] Item.tag.display set from storage cartoonish:option/table cube_output[3]
execute if score @s TEMP matches 4 run data modify entity @e[sort=nearest,limit=1,type=item,tag=this] Item.tag.display set from storage cartoonish:option/table cube_output[4]
summon marker ~ ~ ~ {Tags:["ct_item_pos"],data:{Pos:[0.0d,0.0d,0.0d]}}
execute store result score @s TEMP run data get entity @s Motion[0] 50
execute store result score @s CAL run data get entity @s Pos[0] 50
execute store result entity @e[sort=nearest,limit=1,type=marker,tag=ct_item_pos] data.Pos[0] double 0.02 run scoreboard players operation @s TEMP += @s CAL
execute store result score @s TEMP run data get entity @s Motion[1] 50
execute store result score @s CAL run data get entity @s Pos[1] 50
execute store result entity @e[sort=nearest,limit=1,type=marker,tag=ct_item_pos] data.Pos[1] double 0.02 run scoreboard players operation @s TEMP += @s CAL
execute store result score @s TEMP run data get entity @s Motion[2] 50
execute store result score @s CAL run data get entity @s Pos[2] 50
execute store result entity @e[sort=nearest,limit=1,type=marker,tag=ct_item_pos] data.Pos[2] double 0.02 run scoreboard players operation @s TEMP += @s CAL
data modify entity @e[sort=nearest,limit=1,type=item,tag=this] Pos set from entity @e[sort=nearest,limit=1,type=marker,tag=ct_item_pos] data.Pos
kill @e[sort=nearest,limit=1,type=marker,tag=ct_item_pos]
tag @e[type=item,tag=this] remove this
