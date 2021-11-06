summon marker ^ ^ ^1.6 {Tags:["ct_crossbow_multishot_target"]}

summon firework_rocket ~ ~ ~ {Tags:["ct_crossbow_multishot_new"],ShotAtAngle:1b,HasBeenShot:1b,LeftOwner:0b}
data modify entity @e[type=firework_rocket,tag=ct_crossbow_multishot_new,limit=1] Fire set from entity @e[tag=ct_new_projectile,tag=this,limit=1] Fire
data modify entity @e[type=firework_rocket,tag=ct_crossbow_multishot_new,limit=1] Life set from entity @e[tag=ct_new_projectile,tag=this,limit=1] Life
data modify entity @e[type=firework_rocket,tag=ct_crossbow_multishot_new,limit=1] TicksFrozen set from entity @e[tag=ct_new_projectile,tag=this,limit=1] TicksFrozen
data modify entity @e[type=firework_rocket,tag=ct_crossbow_multishot_new,limit=1] FireworksItem set from entity @e[tag=ct_new_projectile,tag=this,limit=1] FireworksItem
data modify entity @e[type=firework_rocket,tag=ct_crossbow_multishot_new,limit=1] Owner set from entity @e[tag=ct_new_projectile,tag=this,limit=1] Owner
data modify entity @e[type=firework_rocket,tag=ct_crossbow_multishot_new,limit=1] Rotation set from entity @e[tag=ct_new_projectile,tag=this,limit=1] Rotation

execute store result score @s TEMP run data get entity @e[tag=ct_new_projectile,tag=this,limit=1] LifeTime 0.2
scoreboard players operation @s TEMP *= #5 TEMP
scoreboard players set @s random 10
function random:generate
scoreboard players remove @s random_data 5
scoreboard players operation @s TEMP += @s random_data
execute store result entity @e[type=firework_rocket,tag=ct_crossbow_multishot_new,limit=1] LifeTime int 1 run scoreboard players get @s TEMP

execute store result score @s CAL positioned ^ ^ ^1.6 run data get entity @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_multishot_target] Pos[0] 50
execute store result score @s TEMP run data get entity @e[type=firework_rocket,tag=ct_crossbow_multishot_new,limit=1] Pos[0] 50
scoreboard players operation @s CAL -= @s TEMP
execute store result entity @e[type=firework_rocket,tag=ct_crossbow_multishot_new,limit=1] Motion[0] double 0.02 run scoreboard players get @s CAL 

execute store result score @s CAL positioned ^ ^ ^1.6 run data get entity @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_multishot_target] Pos[1] 50
execute store result score @s TEMP run data get entity @e[type=firework_rocket,tag=ct_crossbow_multishot_new,limit=1] Pos[1] 50
scoreboard players operation @s CAL -= @s TEMP
execute store result entity @e[type=firework_rocket,tag=ct_crossbow_multishot_new,limit=1] Motion[1] double 0.02 run scoreboard players get @s CAL 

execute store result score @s CAL positioned ^ ^ ^1.6 run data get entity @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_multishot_target] Pos[2] 50
execute store result score @s TEMP run data get entity @e[type=firework_rocket,tag=ct_crossbow_multishot_new,limit=1] Pos[2] 50
scoreboard players operation @s CAL -= @s TEMP
execute store result entity @e[type=firework_rocket,tag=ct_crossbow_multishot_new,limit=1] Motion[2] double 0.02 run scoreboard players get @s CAL 

tag @e[type=firework_rocket,tag=ct_crossbow_multishot_new,limit=1] remove ct_crossbow_multishot_new
kill @e[type=marker,tag=ct_crossbow_multishot_target]