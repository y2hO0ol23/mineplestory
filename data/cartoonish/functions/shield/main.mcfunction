scoreboard players set @a[tag=!ct_using_shield,scores={ct_shield_leap=1..}] ct_shield_leap -1
scoreboard players remove @a[scores={ct_shield_leap=1..}] ct_shield_leap 1
execute as @a[tag=ct_using_shield,scores={ct_shield_block=1..,ct_using_shield=1..15}] run function cartoonish:shield/correct/main
execute as @p[scores={ct_shield_leap=..0}] at @s run function cartoonish:shield/correct/remove
execute as @a[scores={ct_shield_leap=1..}] run function cartoonish:shield/correct/mark

execute as @a[tag=ct_using_shield] unless score @s ct_using_shield matches 1.. run scoreboard players add @s ct_shield_stack 1
scoreboard players add @a[tag=ct_using_shield] ct_using_shield 1

execute as @a[tag=!ct_using_shield,scores={ct_using_shield=1..}] unless score @s ct_shield_block matches 1.. run scoreboard players remove @s ct_shield_stack 1
scoreboard players set @a[tag=!ct_using_shield] ct_shield_block 0
scoreboard players set @a[tag=!ct_using_shield] ct_using_shield 0
