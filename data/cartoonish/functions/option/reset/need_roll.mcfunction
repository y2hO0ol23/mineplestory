execute store result score @s TEMP run data get entity @s HandItems[0].tag.HideFlags
scoreboard players operation @s CAL = @s TEMP
scoreboard players operation @s CAL %= #4 TEMP
execute unless score @s CAL matches 2.. run scoreboard players add @s TEMP 2
execute store result entity @s HandItems[0].tag.HideFlags int 1 run scoreboard players get @s TEMP
data modify entity @s HandItems[0].tag.AttributeModifiers append value {AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3,Operation:0,UUID:[I;3,3,3,3],Slot:"mainhand"}
data modify entity @s HandItems[0].tag.ct_setup set value 1

data modify storage cartoonish:option/table target set from entity @e[type=armor_stand,tag=this,limit=1] HandItems[0]
data modify storage cartoonish:option/table cubeGrade set value 0
function cartoonish:option/roll
data modify entity @e[type=armor_stand,tag=this,limit=1] HandItems[0] set from storage cartoonish:option/table target