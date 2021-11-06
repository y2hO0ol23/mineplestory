execute store result score @s ct_option0 run data get storage cartoonish:option/table target.tag.optionTable[0]
execute store result score @s ct_option1 run data get storage cartoonish:option/table target.tag.optionTable[1]
execute store result score @s ct_option2 run data get storage cartoonish:option/table target.tag.optionTable[2]
execute store result score @s ct_option3 run data get storage cartoonish:option/table target.tag.optionTable[3]
execute store result score @s ct_option4 run data get storage cartoonish:option/table target.tag.optionTable[4]
execute store result score @s ct_option5 run data get storage cartoonish:option/table target.tag.optionTable[5]
execute store result score @s ct_option6 run data get storage cartoonish:option/table target.tag.optionTable[6]
execute store result score @s ct_option7 run data get storage cartoonish:option/table target.tag.optionTable[7]
execute store result score @s ct_option8 run data get storage cartoonish:option/table target.tag.optionTable[8]
execute store result score @s ct_option9 run data get storage cartoonish:option/table target.tag.optionTable[9]
execute store result score @s ct_option10 run data get storage cartoonish:option/table target.tag.optionTable[10]
execute store result score @s ct_option11 run data get storage cartoonish:option/table target.tag.optionTable[11]
execute store result score @s ct_option12 run data get storage cartoonish:option/table target.tag.optionTable[12]
execute store result score @s ct_option13 run data get storage cartoonish:option/table target.tag.optionTable[13]
execute store result score @s ct_option14 run data get storage cartoonish:option/table target.tag.optionTable[14]

scoreboard players set @s ct_starforce 100
execute store result score @s TEMP run data get storage cartoonish:option/table target.tag.starForceLevel
scoreboard players operation @s TEMP *= #5 TEMP
scoreboard players operation @s ct_starforce += @s TEMP
scoreboard players operation @s TEMP /= #5 TEMP
scoreboard players remove @s TEMP 15
scoreboard players operation @s TEMP *= #10 TEMP
execute if score @s TEMP matches 1.. run scoreboard players operation @s ct_starforce += @s TEMP

#HP, Armor, CRT percent, SPD, JMP, knockback, ATK, ATK SPD, CRT Damage
data modify storage cartoonish:option/table target.tag.statTable set value [0,0,0,0,0,0,0,0,0]
#HP - starforce O
#execute store result score @s TEMP run attribute @s generic.max_health base get 10
scoreboard players operation @s ct_option0 *= @s ct_option1
scoreboard players operation @s ct_option0 /= #1000 TEMP
scoreboard players operation @s ct_option0 *= @s ct_starforce
scoreboard players operation @s ct_option0 /= #100 TEMP
#scoreboard players remove @s ct_option0 200
execute store result storage cartoonish:option/table target.tag.statTable[0] int 1 run scoreboard players get @s ct_option0
#Armor - starforce O
#execute unless score @s ct_option3 matches 1000 if score @s ct_option2 matches 0 run scoreboard players set @s ct_option2 10
scoreboard players operation @s ct_option2 *= @s ct_option3
scoreboard players operation @s ct_option2 /= #1000 TEMP
scoreboard players operation @s ct_option2 *= @s ct_starforce
scoreboard players operation @s ct_option2 /= #100 TEMP
execute store result storage cartoonish:option/table target.tag.statTable[1] int 1 run scoreboard players get @s ct_option2
#Critical percent - starforce O
scoreboard players operation @s ct_option4 *= @s ct_starforce
scoreboard players operation @s ct_option4 /= #100 TEMP
execute store result storage cartoonish:option/table target.tag.statTable[2] int 1 run scoreboard players get @s ct_option4
#SPD
#execute store result score @s TEMP run attribute @s generic.movement_speed base get 1000
scoreboard players operation @s ct_option6 *= @s ct_option7
scoreboard players operation @s ct_option6 /= #1000 TEMP
execute store result storage cartoonish:option/table target.tag.statTable[3] int 1 run scoreboard players get @s ct_option6
#JMP
#scoreboard players add @s ct_option8 20
scoreboard players operation @s ct_option8 *= @s ct_option9
scoreboard players operation @s ct_option8 /= #1000 TEMP
execute store result storage cartoonish:option/table target.tag.statTable[4] int 1 run scoreboard players get @s ct_option8
#knockback...
#execute unless score @s ct_option11 matches 1000 if score @s ct_option10 matches 0 run scoreboard players set @s ct_option10 20
scoreboard players operation @s ct_option10 *= @s ct_option11
scoreboard players operation @s ct_option10 /= #1000 TEMP
execute store result storage cartoonish:option/table target.tag.statTable[5] int 1 run scoreboard players get @s ct_option10
#ATK - starforce O
#execute unless score @s ct_option13 matches 1000 if score @s ct_option12 matches 0 run scoreboard players set @s ct_option12 10
scoreboard players operation @s ct_option12 *= @s ct_option13
scoreboard players operation @s ct_option12 /= #1000 TEMP
scoreboard players operation @s ct_option12 *= @s ct_starforce
scoreboard players operation @s ct_option12 /= #100 TEMP
execute store result storage cartoonish:option/table target.tag.statTable[6] int 1 run scoreboard players get @s ct_option12
#ATK SPD
scoreboard players operation @s ct_option14 *= @s ct_starforce
scoreboard players operation @s ct_option14 /= #100 TEMP
execute store result storage cartoonish:option/table target.tag.statTable[7] int 1 run scoreboard players get @s ct_option14
#Critical damage - starforce O
scoreboard players operation @s ct_option5 *= @s ct_starforce
scoreboard players operation @s ct_option5 /= #100 TEMP
execute store result storage cartoonish:option/table target.tag.statTable[8] int 1 run scoreboard players get @s ct_option5