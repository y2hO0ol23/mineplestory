data modify entity @e[sort=nearest,limit=1,type=marker,tag=ct_enchant] data.items append from entity @s Item
kill @s

execute if data entity @e[sort=nearest,limit=1,type=marker,tag=ct_enchant] data.items[1] as @e[sort=nearest,limit=1,type=marker,tag=ct_enchant] run function cartoonish:enchant/calculate/check
playsound minecraft:entity.item.pickup block @a ~ ~ ~ 1 2 0