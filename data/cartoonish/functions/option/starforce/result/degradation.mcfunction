execute store result score @s CAL run data get entity @s Inventory[{Slot:-106b}].tag.starForceLevel
execute store result entity @e[tag=ct_star_force_item,type=armor_stand,limit=1] HandItems[1].tag.starForceLevel int 1 run scoreboard players remove @s CAL 1
execute at @s run playsound minecraft:block.anvil.land player @a ~ ~ ~ 0.5 0 0
