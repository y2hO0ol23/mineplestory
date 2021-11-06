scoreboard players operation @p[distance=..0.5,tag=ct_pop_result] TEMP = @s TEMP
execute as @p[distance=..0.5,tag=ct_pop_result] run function cartoonish:enchant/reward/result/level

summon item ~ ~ ~ {Tags:["this"],Item:{id:"grass_block",Count:1b}}
data modify entity @e[sort=nearest,limit=1,type=item,tag=this] Item set from entity @s data.result
tag @e[sort=nearest,limit=1,type=item,tag=this] remove this
kill @s

tag @a[distance=..0.5,tag=ct_pop_result] remove ct_pop_result
playsound minecraft:block.anvil.use block @a ~ ~ ~ 1 1 0