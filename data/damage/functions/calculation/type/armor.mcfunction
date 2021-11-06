#damage = damage = damage  / 25 / 25 * (25 - min( 20, max( defensePoints / 5, defensePoints - damage * 4 / (toughness + 8) ) ) * (25 - cappedEPF) 

scoreboard players operation @s BIN = @s damage_type
execute if score @s BIN matches 16.. run scoreboard players set @s BIN -1
execute if score @s BIN matches 8.. run scoreboard players remove @s BIN 8
execute if score @s BIN matches 4.. run scoreboard players set @s BIN -1

execute store result score @s CALC run attribute @s[scores={BIN=0..}] minecraft:generic.armor_toughness get

#A : damage * 4 / (toughness + 8)
scoreboard players set @s TEMP 4
scoreboard players operation @s TEMP *= @s damage_amount
scoreboard players add @s CALC 8
scoreboard players operation @s TEMP /= @s CALC
#TEMP = A

execute store result score @s CALC run attribute @s[scores={BIN=0..}] minecraft:generic.armor get
scoreboard players operation @s CALC *= #upper TEMP
#B : defensePoints - A <= (A - defensePoints) * -1
scoreboard players operation @s TEMP -= @s CALC
scoreboard players operation @s TEMP *= #-1 TEMP
#TEMP = B, CALC = defencePoint

#C = 25 - min( 20, max(defencePoint / 5, B) )
scoreboard players operation @s CALC /= #5 TEMP
execute if score @s TEMP < @s CALC run scoreboard players operation @s TEMP = @s CALC
execute unless score @s TEMP matches ..200000 run scoreboard players set @s TEMP 200000
scoreboard players remove @s TEMP 250000
scoreboard players operation @s TEMP *= #-1 TEMP
#TEMP = C 

#damage * C == armor protection
scoreboard players operation @s CALC = #upper TEMP
function damage:calculation/withtemp