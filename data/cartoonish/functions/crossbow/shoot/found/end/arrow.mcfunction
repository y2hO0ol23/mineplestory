summon marker ^ ^ ^3.1 {Tags:["ct_crossbow_multishot_target"]}
scoreboard players set @s random 6

execute if entity @e[tag=ct_new_projectile,tag=this,type=arrow] run summon arrow ~ ~ ~ {Tags:["ct_crossbow_multishot_new"],pickup:2b,HasBeenShot:1b,ShotFromCrossbow:1b,LeftOwner:0b}
execute if entity @e[tag=ct_new_projectile,tag=this,type=spectral_arrow] run summon spectral_arrow ~ ~ ~ {Tags:["ct_crossbow_multishot_new"],pickup:2b,HasBeenShot:1b,ShotFromCrossbow:1b}
data modify entity @e[type=#minecraft:arrows,tag=ct_crossbow_multishot_new,limit=1] Fire set from entity @e[tag=ct_new_projectile,tag=this,limit=1] Fire
data modify entity @e[type=#minecraft:arrows,tag=ct_crossbow_multishot_new,limit=1] shake set from entity @e[tag=ct_new_projectile,tag=this,limit=1] shake
data modify entity @e[type=#minecraft:arrows,tag=ct_crossbow_multishot_new,limit=1] crit set from entity @e[tag=ct_new_projectile,tag=this,limit=1] crit
data modify entity @e[type=#minecraft:arrows,tag=ct_crossbow_multishot_new,limit=1] damage set from entity @e[tag=ct_new_projectile,tag=this,limit=1] damage
data modify entity @e[type=#minecraft:arrows,tag=ct_crossbow_multishot_new,limit=1] Potion set from entity @e[tag=ct_new_projectile,tag=this,limit=1] Potion
data modify entity @e[type=#minecraft:arrows,tag=ct_crossbow_multishot_new,limit=1] Color set from entity @e[tag=ct_new_projectile,tag=this,limit=1] Color
data modify entity @e[type=#minecraft:arrows,tag=ct_crossbow_multishot_new,limit=1] CustomPotionEffects set from entity @e[tag=ct_new_projectile,tag=this,limit=1] CustomPotionEffects
data modify entity @e[type=#minecraft:arrows,tag=ct_crossbow_multishot_new,limit=1] PierceLevel set from entity @e[tag=ct_new_projectile,tag=this,limit=1] PierceLevel
data modify entity @e[type=#minecraft:arrows,tag=ct_crossbow_multishot_new,limit=1] Owner set from entity @e[tag=ct_new_projectile,tag=this,limit=1] Owner

execute store result score @s CAL positioned ^ ^ ^3.1 run data get entity @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_multishot_target] Pos[0] 50
execute store result score @s TEMP run data get entity @e[type=#minecraft:arrows,tag=ct_crossbow_multishot_new,limit=1] Pos[0] 50
scoreboard players operation @s CAL -= @s TEMP
function random:generate
scoreboard players remove @s random_data 3
scoreboard players operation @s CAL += @s random_data
execute store result entity @e[type=#minecraft:arrows,tag=ct_crossbow_multishot_new,limit=1] Motion[0] double 0.02 run scoreboard players get @s CAL 

execute store result score @s CAL positioned ^ ^ ^3.1 run data get entity @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_multishot_target] Pos[1] 50
execute store result score @s TEMP run data get entity @e[type=#minecraft:arrows,tag=ct_crossbow_multishot_new,limit=1] Pos[1] 50
scoreboard players operation @s CAL -= @s TEMP
function random:generate
scoreboard players remove @s random_data 3
scoreboard players operation @s CAL += @s random_data
execute store result entity @e[type=#minecraft:arrows,tag=ct_crossbow_multishot_new,limit=1] Motion[1] double 0.02 run scoreboard players get @s CAL 

execute store result score @s CAL positioned ^ ^ ^3.1 run data get entity @e[sort=nearest,limit=1,type=marker,tag=ct_crossbow_multishot_target] Pos[2] 50
execute store result score @s TEMP run data get entity @e[type=#minecraft:arrows,tag=ct_crossbow_multishot_new,limit=1] Pos[2] 50
scoreboard players operation @s CAL -= @s TEMP
function random:generate
scoreboard players remove @s random_data 3
scoreboard players operation @s CAL += @s random_data
execute store result entity @e[type=#minecraft:arrows,tag=ct_crossbow_multishot_new,limit=1] Motion[2] double 0.02 run scoreboard players get @s CAL 

tag @e[type=#minecraft:arrows,tag=ct_crossbow_multishot_new,limit=1] remove ct_crossbow_multishot_new
kill @e[type=marker,tag=ct_crossbow_multishot_target]