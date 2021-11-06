execute store result score @s CALC run data get entity @s Health 10000
scoreboard players operation @s CALC -= @s damage_real

execute store result score @s TEMP run attribute @s minecraft:generic.max_health get 10000
scoreboard players operation @s TEMP -= @s CALC
effect give @s minecraft:health_boost 1 0 true
function damage:system/set/health/player/minus
effect clear @s health_boost
function damage:system/set/health/player/reset

execute unless score @s CALC matches 10000.. run kill @s
#execute unless score @s CALC matches 10000.. run function damage:system/kill