#maximum damage in this datapack is 1024
#damage_type
#     1(2^0) : "can't portected by armor", 
#     2(2^1) : "fire",
#     4(2^2) : "blast", 
#     8(2^3) : "projectile",
#     16(2^4) : "falling"

execute if score @s damage_amount matches 1025.. run scoreboard players set @s damage_amount 1024
execute if score @s damage_amount matches ..-1 run scoreboard players set @s damage_amount 0
scoreboard players operation @s damage_amount *= #upper TEMP
scoreboard players operation @s damage_real = @s damage_amount

scoreboard players operation @s BIN = @s damage_type
scoreboard players operation @s BIN %= #2 TEMP
execute if score @s BIN matches 0 run function damage:calculation/main

execute if entity @s[type=player,gamemode=!creative,gamemode=!spectator] run function damage:system/set
execute if entity @s[type=!player] run function damage:system/set

scoreboard players operation @s damage_amount /= #upper TEMP
