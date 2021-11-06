#Armor
function cartoonish:option/apply/reset/armor
function cartoonish:option/apply/reset/armor_toughness
execute store result score @s TEMP run data get entity @s SelectedItem.tag.statTable[1]
execute store result score @s CAL run data get entity @s Inventory[{Slot:100b}].tag.statTable[1]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s Inventory[{Slot:101b}].tag.statTable[1]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s Inventory[{Slot:102b}].tag.statTable[1]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s Inventory[{Slot:103b}].tag.statTable[1]
scoreboard players operation @s TEMP += @s CAL

scoreboard players operation @s CNT = @s TEMP
execute if score @s TEMP matches 1.. run function cartoonish:option/apply/type/armor
scoreboard players remove @s CNT 300
scoreboard players operation @s TEMP = @s CNT
execute if score @s TEMP matches 1.. run function cartoonish:option/apply/type/armor_toughness
#HP
function cartoonish:option/apply/reset/hp
execute store result score @s TEMP run data get entity @s SelectedItem.tag.statTable[0]
execute store result score @s CAL run data get entity @s Inventory[{Slot:100b}].tag.statTable[0]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s Inventory[{Slot:101b}].tag.statTable[0]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s Inventory[{Slot:102b}].tag.statTable[0]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s Inventory[{Slot:103b}].tag.statTable[0]
scoreboard players operation @s TEMP += @s CAL

scoreboard players remove @s CNT 200
execute if score @s CNT matches 1.. run scoreboard players operation @s TEMP += @s CNT
function cartoonish:option/apply/type/hp

#Critical
# percent
execute store result score @s ct_crit_per run data get entity @s SelectedItem.tag.statTable[2]
execute store result score @s CAL run data get entity @s Inventory[{Slot:100b}].tag.statTable[2]
scoreboard players operation @s ct_crit_per += @s CAL
execute store result score @s CAL run data get entity @s Inventory[{Slot:101b}].tag.statTable[2]
scoreboard players operation @s ct_crit_per += @s CAL
execute store result score @s CAL run data get entity @s Inventory[{Slot:102b}].tag.statTable[2]
scoreboard players operation @s ct_crit_per += @s CAL
execute store result score @s CAL run data get entity @s Inventory[{Slot:103b}].tag.statTable[2]
scoreboard players operation @s ct_crit_per += @s CAL
scoreboard players add @s ct_crit_per 100
# damage
execute store result score @s ct_crit_dmg run data get entity @s SelectedItem.tag.statTable[8]
execute store result score @s CAL run data get entity @s Inventory[{Slot:100b}].tag.statTable[8]
scoreboard players operation @s ct_crit_dmg += @s CAL
execute store result score @s CAL run data get entity @s Inventory[{Slot:101b}].tag.statTable[8]
scoreboard players operation @s ct_crit_dmg += @s CAL
execute store result score @s CAL run data get entity @s Inventory[{Slot:102b}].tag.statTable[8]
scoreboard players operation @s ct_crit_dmg += @s CAL
execute store result score @s CAL run data get entity @s Inventory[{Slot:103b}].tag.statTable[8]
scoreboard players operation @s ct_crit_dmg += @s CAL
scoreboard players operation @s CAL = @s ct_crit_per
scoreboard players remove @s CAL 1000
execute if score @s CAL matches 0.. run scoreboard players operation @s ct_crit_dmg += @s CAL
scoreboard players add @s ct_crit_dmg 2000
tag @s remove ct_is_crit
function cartoonish:option/apply/type/crit

#SPD
function cartoonish:option/apply/reset/speed
execute store result score @s TEMP run data get entity @s SelectedItem.tag.statTable[3]
execute store result score @s CAL run data get entity @s Inventory[{Slot:100b}].tag.statTable[3]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s Inventory[{Slot:101b}].tag.statTable[3]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s Inventory[{Slot:102b}].tag.statTable[3]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s Inventory[{Slot:103b}].tag.statTable[3]
scoreboard players operation @s TEMP += @s CAL

execute if score @s TEMP matches 1.. run function cartoonish:option/apply/type/speed
#JMP
execute store result score @s ct_option_jump run data get entity @s SelectedItem.tag.statTable[4]
execute store result score @s CAL run data get entity @s Inventory[{Slot:100b}].tag.statTable[4]
scoreboard players operation @s ct_option_jump += @s CAL
execute store result score @s CAL run data get entity @s Inventory[{Slot:101b}].tag.statTable[4]
scoreboard players operation @s ct_option_jump += @s CAL
execute store result score @s CAL run data get entity @s Inventory[{Slot:102b}].tag.statTable[4]
scoreboard players operation @s ct_option_jump += @s CAL
execute store result score @s CAL run data get entity @s Inventory[{Slot:103b}].tag.statTable[4]
scoreboard players operation @s ct_option_jump += @s CAL

function cartoonish:option/apply/jump
#knockback...
function cartoonish:option/apply/reset/knockback_resistance
execute store result score @s TEMP run data get entity @s SelectedItem.tag.statTable[5]
execute store result score @s CAL run data get entity @s Inventory[{Slot:100b}].tag.statTable[5]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s Inventory[{Slot:101b}].tag.statTable[5]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s Inventory[{Slot:102b}].tag.statTable[5]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s Inventory[{Slot:103b}].tag.statTable[5]
scoreboard players operation @s TEMP += @s CAL

execute if score @s TEMP matches 1.. run function cartoonish:option/apply/type/knockback_resistance
#ATK
function cartoonish:option/apply/reset/attack
execute store result score @s TEMP run data get entity @s SelectedItem.tag.statTable[6]
execute store result score @s CAL run data get entity @s Inventory[{Slot:100b}].tag.statTable[6]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s Inventory[{Slot:101b}].tag.statTable[6]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s Inventory[{Slot:102b}].tag.statTable[6]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s Inventory[{Slot:103b}].tag.statTable[6]
scoreboard players operation @s TEMP += @s CAL

execute if score @s TEMP matches 1.. run function cartoonish:option/apply/type/attack
#ATK SPD
function cartoonish:option/apply/reset/attack_speed
execute store result score @s TEMP run data get entity @s SelectedItem.tag.statTable[7]
execute store result score @s CAL run data get entity @s Inventory[{Slot:100b}].tag.statTable[7]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s Inventory[{Slot:101b}].tag.statTable[7]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s Inventory[{Slot:102b}].tag.statTable[7]
scoreboard players operation @s TEMP += @s CAL
execute store result score @s CAL run data get entity @s Inventory[{Slot:103b}].tag.statTable[7]
scoreboard players operation @s TEMP += @s CAL

execute if score @s TEMP matches 1.. run function cartoonish:option/apply/type/attack_speed

scoreboard players set @s ct_able_itemslot 0
execute if data entity @s SelectedItem{tag:{ct_setup:1}} run scoreboard players add @s ct_able_itemslot 1
execute if data entity @s Inventory[{Slot:100b,tag:{ct_setup:1}}] run scoreboard players add @s ct_able_itemslot 1
execute if data entity @s Inventory[{Slot:101b,tag:{ct_setup:1}}] run scoreboard players add @s ct_able_itemslot 1
execute if data entity @s Inventory[{Slot:102b,tag:{ct_setup:1}}] run scoreboard players add @s ct_able_itemslot 1
execute if data entity @s Inventory[{Slot:103b,tag:{ct_setup:1}}] run scoreboard players add @s ct_able_itemslot 1

advancement revoke @s only cartoonish:option/move_weapon

execute store result score @s TEMP run data get entity @s SelectedItem.tag.ct_bug_fix
execute if data entity @s SelectedItem.tag.ct_setup unless score @s TEMP = #ct_bug_fix TEMP run scoreboard players set @s fix 1
execute store result score @s TEMP run data get entity @s Inventory[{Slot:100b}].tag.ct_bug_fix
execute if data entity @s Inventory[{Slot:100b}].tag.ct_setup unless score @s TEMP = #ct_bug_fix TEMP run scoreboard players set @s fix 1
execute store result score @s TEMP run data get entity @s Inventory[{Slot:101b}].tag.ct_bug_fix
execute if data entity @s Inventory[{Slot:101b}].tag.ct_setup unless score @s TEMP = #ct_bug_fix TEMP run scoreboard players set @s fix 1
execute store result score @s TEMP run data get entity @s Inventory[{Slot:102b}].tag.ct_bug_fix
execute if data entity @s Inventory[{Slot:102b}].tag.ct_setup unless score @s TEMP = #ct_bug_fix TEMP run scoreboard players set @s fix 1
execute store result score @s TEMP run data get entity @s Inventory[{Slot:103b}].tag.ct_bug_fix
execute if data entity @s Inventory[{Slot:103b}].tag.ct_setup unless score @s TEMP = #ct_bug_fix TEMP run scoreboard players set @s fix 1