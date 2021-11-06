execute if entity @s[type=wither,tag=!ct_mst_set] run function cartoonish:monster/wither/set
scoreboard players remove @e[type=wither,scores={ct_patern_term=1..}] ct_patern_term 1
execute if entity @s[scores={ct_patern_term=1..}] if score @s ct_mst_hp < @s ct_mst_mxhp run scoreboard players remove @s ct_patern_term 1
execute if entity @s[type=wither,scores={ct_patern_term=1..}] if data entity @s {HurtTime:9s} if score @s ct_mst_hp < @s ct_mst_mxhp run scoreboard players remove @s ct_patern_term 2

execute if entity @s[scores={ct_patern_term=..0,ct_patern=0}] if data entity @s {HurtTime:9s} run tag @s add ct_target
execute if entity @s[tag=ct_target] run function cartoonish:monster/wither/spawn_ws

execute if data entity @s {HurtTime:9s} run function cartoonish:monster/wither/damage_dealt

fill ~1 ~2.5 ~1 ~-1 ~ ~-1 air replace bedrock
execute if score @s ct_mst_hp matches ..51200 run scoreboard players add @s ct_mst_hp 5
