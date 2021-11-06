execute if data entity @s data.items[0] run playsound minecraft:entity.item.pickup block @a ~ ~ ~ 1 2 0
execute as @e[distance=..0.5,type=item] run data modify entity @s PickupDelay set value 0s
data modify storage cartoonish:enchant item set from entity @s data.items[0]
execute if data entity @s data.items[0] run function cartoonish:enchant/reward/items/spawn
data modify storage cartoonish:enchant item set from entity @s data.items[1]
execute if data entity @s data.items[1] run function cartoonish:enchant/reward/items/spawn
kill @s

execute as @e[type=marker,tag=ct_enchant,tag=ct_enchant_end,limit=1] at @s run function cartoonish:enchant/reward/items/loop