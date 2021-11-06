#damage <= damage = damage * (25 - min( 20, max( defensePoints / 5, defensePoints - damage * 4 / (toughness + 8) ) ) * (25 - cappedEPF)  / 25 / 25
#type{2^0 : "can't portected by armor", 2^2 : "fire", 2^3 : "blast", 2^4 : "projectile", 2^5 : "falling" }

# damage * (25 - min( 20, max( defensePoints / 5, defensePoints - damage * 4 / (toughness + 8) ) )
function damage:calculation/type/armor

#D = 25 - cappedEPF <= (cappedEPF - 25) * -1
scoreboard players set @s TEMP 25
scoreboard players operation @s BIN = @s damage_type
execute if score @s BIN matches 16.. run function damage:calculation/type/falling
execute if score @s BIN matches 8.. run function damage:calculation/type/projectile
execute if score @s BIN matches 4.. run function damage:calculation/type/blast
execute if score @s BIN matches 2.. run function damage:calculation/type/fire
function damage:calculation/type/protection
execute unless score @s TEMP matches 5.. run scoreboard players set @s TEMP 5
scoreboard players operation @s TEMP *= #upper TEMP

#damage * D
scoreboard players operation @s CALC = #upper TEMP
function damage:calculation/withtemp

#damage / 25 / 25 <= damage / 625
scoreboard players operation @s damage_real /= #625 TEMP