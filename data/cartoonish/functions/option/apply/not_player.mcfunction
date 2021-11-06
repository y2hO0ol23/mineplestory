#Armor
function cartoonish:option/apply/reset/armor
function cartoonish:option/apply/reset/armor_toughness
execute store result score @s TEMP run data get entity @s HandItems[0].tag.statTable[1]
execute store result score @s CAL run data get entity @s ArmorItems[0].tag.statTable[1]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s ArmorItems[1].tag.statTable[1]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s ArmorItems[2].tag.statTable[1]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s ArmorItems[3].tag.statTable[1]
scoreboard players operation @s TEMP += @s CAL

scoreboard players operation @s CNT = @s TEMP
execute if score @s TEMP matches 1.. run function cartoonish:option/apply/type/armor
scoreboard players remove @s CNT 300
scoreboard players operation @s TEMP = @s CNT
execute if score @s TEMP matches 1.. run function cartoonish:option/apply/type/armor_toughness
#HP
function cartoonish:option/apply/reset/hp
execute store result score @s TEMP run data get entity @s HandItems[0].tag.statTable[0]
execute store result score @s CAL run data get entity @s ArmorItems[0].tag.statTable[0]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s ArmorItems[1].tag.statTable[0]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s ArmorItems[2].tag.statTable[0]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s ArmorItems[3].tag.statTable[0]
scoreboard players operation @s TEMP += @s CAL

scoreboard players remove @s CNT 200
execute if score @s CNT matches 1.. run scoreboard players operation @s TEMP += @s CNT
function cartoonish:option/apply/type/hp
execute store result entity @s Health double 0.1 run attribute @s minecraft:generic.max_health get 10

#SPD
function cartoonish:option/apply/reset/speed
execute store result score @s TEMP run data get entity @s HandItems[0].tag.statTable[3]
execute store result score @s CAL run data get entity @s ArmorItems[0].tag.statTable[3]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s ArmorItems[1].tag.statTable[3]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s ArmorItems[2].tag.statTable[3]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s ArmorItems[3].tag.statTable[3]
scoreboard players operation @s TEMP += @s CAL

execute if score @s TEMP matches 1.. run function cartoonish:option/apply/type/speed
#JMP
execute store result score @s ct_option_jump run data get entity @s HandItems[0].tag.statTable[4]
execute store result score @s CAL run data get entity @s ArmorItems[0].tag.statTable[4]
scoreboard players operation @s ct_option_jump += @s CAL
execute store result score @s CAL run data get entity @s ArmorItems[1].tag.statTable[4]
scoreboard players operation @s ct_option_jump += @s CAL
execute store result score @s CAL run data get entity @s ArmorItems[2].tag.statTable[4]
scoreboard players operation @s ct_option_jump += @s CAL
execute store result score @s CAL run data get entity @s ArmorItems[3].tag.statTable[4]
scoreboard players operation @s ct_option_jump += @s CAL

function cartoonish:option/apply/jump
#knockback...
function cartoonish:option/apply/reset/knockback_resistance
execute store result score @s TEMP run data get entity @s HandItems[0].tag.statTable[5]
execute store result score @s CAL run data get entity @s ArmorItems[0].tag.statTable[5]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s ArmorItems[1].tag.statTable[5]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s ArmorItems[2].tag.statTable[5]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s ArmorItems[3].tag.statTable[5]
scoreboard players operation @s TEMP += @s CAL

execute if score @s TEMP matches 1.. run function cartoonish:option/apply/type/knockback_resistance
#ATK
function cartoonish:option/apply/reset/attack
execute store result score @s TEMP run data get entity @s HandItems[0].tag.statTable[6]
execute store result score @s CAL run data get entity @s ArmorItems[0].tag.statTable[6]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s ArmorItems[1].tag.statTable[6]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s ArmorItems[2].tag.statTable[6]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s ArmorItems[3].tag.statTable[6]
scoreboard players operation @s TEMP += @s CAL
#Crit to damage
# percent
execute store result score @s ct_crit_per run data get entity @s HandItems[0].tag.statTable[2]
execute store result score @s CAL run data get entity @s ArmorItems[0].tag.statTable[2]
scoreboard players operation @s ct_crit_per += @s CAL
execute store result score @s CAL run data get entity @s ArmorItems[1].tag.statTable[2]
scoreboard players operation @s ct_crit_per += @s CAL
execute store result score @s CAL run data get entity @s ArmorItems[2].tag.statTable[2]
scoreboard players operation @s ct_crit_per += @s CAL
execute store result score @s CAL run data get entity @s ArmorItems[3].tag.statTable[2]
scoreboard players operation @s ct_crit_per += @s CAL
scoreboard players add @s ct_crit_per 100
# damage
execute store result score @s ct_crit_dmg run data get entity @s HandItems[0].tag.statTable[8]
execute store result score @s CAL run data get entity @s ArmorItems[0].tag.statTable[8]
scoreboard players operation @s ct_crit_dmg += @s CAL
execute store result score @s CAL run data get entity @s ArmorItems[1].tag.statTable[8]
scoreboard players operation @s ct_crit_dmg += @s CAL
execute store result score @s CAL run data get entity @s ArmorItems[2].tag.statTable[8]
scoreboard players operation @s ct_crit_dmg += @s CAL
execute store result score @s CAL run data get entity @s ArmorItems[3].tag.statTable[8]
scoreboard players operation @s ct_crit_dmg += @s CAL
scoreboard players operation @s CAL = @s ct_crit_per
scoreboard players remove @s CAL 1000
execute if score @s CAL matches 0.. run scoreboard players operation @s ct_crit_dmg += @s CAL
scoreboard players add @s ct_crit_dmg 2000
# calculation
scoreboard players operation @s ct_crit_per *= @s TEMP
scoreboard players operation @s ct_crit_per /= #1000 TEMP
scoreboard players operation @s ct_crit_per *= @s ct_crit_dmg
scoreboard players operation @s ct_crit_per /= #1000 TEMP

execute if score @s TEMP matches 1.. run function cartoonish:option/apply/type/attack
#ATK SPD
function cartoonish:option/apply/reset/attack_speed
execute store result score @s TEMP run data get entity @s HandItems[0].tag.statTable[7]
execute store result score @s CAL run data get entity @s ArmorItems[0].tag.statTable[7]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s ArmorItems[1].tag.statTable[7]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s ArmorItems[2].tag.statTable[7]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s ArmorItems[3].tag.statTable[7]
scoreboard players operation @s TEMP += @s CAL

execute if score @s TEMP matches 1.. run function cartoonish:option/apply/type/attack_speed
