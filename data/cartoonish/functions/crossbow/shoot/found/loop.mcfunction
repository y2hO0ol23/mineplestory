tag @s add this

execute at @a run summon marker ~ ~ ~ {Tags:["ct_found_owner"]}
tag @a[tag=ct_bow_target] remove ct_bow_target

execute as @e[type=marker,tag=ct_found_owner] at @s run data modify entity @s data.Owner set from entity @p UUID
execute as @e[type=marker,tag=ct_found_owner] store success score @s TEMP run data modify entity @s data.Owner set from entity @e[limit=1,tag=ct_new_projectile,tag=this] Owner
execute as @e[tag=!ct_new_projectile,type=!player,tag=!ct_found_owner] at @s anchored eyes positioned ^ ^ ^ if entity @e[distance=..0.5,tag=ct_new_projectile,tag=this] store success score @s TEMP run data modify entity @s UUID set from entity @e[limit=1,tag=ct_new_projectile,tag=this] Owner

execute as @e[type=!player,tag=!ct_found_owner,scores={TEMP=0}] at @s anchored eyes positioned ^ ^ ^ if entity @e[distance=..0.5,tag=ct_new_projectile,tag=this] run tag @s add this
execute at @e[type=marker,tag=ct_found_owner,scores={TEMP=0}] run tag @p add this

scoreboard players set @e[tag=!ct_found_owner,tag=!ct_new_projectile,tag=this,limit=1] TEMP -1
execute as @e[tag=!ct_found_owner,tag=!ct_new_projectile,tag=this,limit=1] if data entity @s SelectedItem{id:"minecraft:crossbow"} store result score @s TEMP run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:multishot"}].lvl
execute as @e[tag=!ct_found_owner,tag=!ct_new_projectile,tag=this,limit=1] if data entity @s Inventory[{Slot:-106b,id:"minecraft:crossbow"}] unless score @s TEMP matches 0.. store result score @s TEMP run data get entity @s Inventory[{Slot:-106b}].tag.Enchantments[{id:"minecraft:multishot"}].lvl
execute as @e[tag=!ct_found_owner,tag=!ct_new_projectile,tag=this,scores={TEMP=2..}] at @s[tag=!ct_crossbow_detected] anchored eyes positioned ^ ^ ^ run function cartoonish:crossbow/shoot/found/end

tag @s remove ct_new_projectile
tag @e[tag=this] remove this
kill @e[type=marker,tag=ct_found_owner]

execute as @e[tag=ct_new_projectile,limit=1,sort=random] run function cartoonish:crossbow/shoot/found/loop