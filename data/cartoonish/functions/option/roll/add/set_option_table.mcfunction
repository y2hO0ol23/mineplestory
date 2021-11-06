execute store result score @s TEMP run data get storage cartoonish:option/table makeUp.value 10
execute if data storage cartoonish:option/table makeUp{type:0} store result score @s CAL run data get storage cartoonish:option/table target.tag.optionTable[0]
execute if data storage cartoonish:option/table makeUp{type:2} store result score @s CAL run data get storage cartoonish:option/table target.tag.optionTable[2]
execute if data storage cartoonish:option/table makeUp{type:4} store result score @s CAL run data get storage cartoonish:option/table target.tag.optionTable[4]
execute if data storage cartoonish:option/table makeUp{type:5} store result score @s CAL run data get storage cartoonish:option/table target.tag.optionTable[5]
execute if data storage cartoonish:option/table makeUp{type:6} store result score @s CAL run data get storage cartoonish:option/table target.tag.optionTable[6]
execute if data storage cartoonish:option/table makeUp{type:8} store result score @s CAL run data get storage cartoonish:option/table target.tag.optionTable[8]
execute if data storage cartoonish:option/table makeUp{type:10} store result score @s CAL run data get storage cartoonish:option/table target.tag.optionTable[10]
execute if data storage cartoonish:option/table makeUp{type:12} store result score @s CAL run data get storage cartoonish:option/table target.tag.optionTable[12]
execute if data storage cartoonish:option/table makeUp{type:14} store result score @s CAL run data get storage cartoonish:option/table target.tag.optionTable[14]
scoreboard players operation @s CAL += @s TEMP
execute if data storage cartoonish:option/table makeUp{type:0} store result storage cartoonish:option/table target.tag.optionTable[0] int 1 run scoreboard players get @s CAL
execute if data storage cartoonish:option/table makeUp{type:2} store result storage cartoonish:option/table target.tag.optionTable[2] int 1 run scoreboard players get @s CAL
execute if data storage cartoonish:option/table makeUp{type:4} store result storage cartoonish:option/table target.tag.optionTable[4] int 1 run scoreboard players get @s CAL
execute if data storage cartoonish:option/table makeUp{type:5} store result storage cartoonish:option/table target.tag.optionTable[5] int 1 run scoreboard players get @s CAL
execute if data storage cartoonish:option/table makeUp{type:6} store result storage cartoonish:option/table target.tag.optionTable[6] int 1 run scoreboard players get @s CAL
execute if data storage cartoonish:option/table makeUp{type:8} store result storage cartoonish:option/table target.tag.optionTable[8] int 1 run scoreboard players get @s CAL
execute if data storage cartoonish:option/table makeUp{type:10} store result storage cartoonish:option/table target.tag.optionTable[10] int 1 run scoreboard players get @s CAL
execute if data storage cartoonish:option/table makeUp{type:12} store result storage cartoonish:option/table target.tag.optionTable[12] int 1 run scoreboard players get @s CAL
execute if data storage cartoonish:option/table makeUp{type:14} store result storage cartoonish:option/table target.tag.optionTable[14] int 1 run scoreboard players get @s CAL

execute if data storage cartoonish:option/table makeUp{type:1} store result score @s CAL run data get storage cartoonish:option/table target.tag.optionTable[1]
execute if data storage cartoonish:option/table makeUp{type:3} store result score @s CAL run data get storage cartoonish:option/table target.tag.optionTable[3]
execute if data storage cartoonish:option/table makeUp{type:7} store result score @s CAL run data get storage cartoonish:option/table target.tag.optionTable[7]
execute if data storage cartoonish:option/table makeUp{type:9} store result score @s CAL run data get storage cartoonish:option/table target.tag.optionTable[9]
execute if data storage cartoonish:option/table makeUp{type:11} store result score @s CAL run data get storage cartoonish:option/table target.tag.optionTable[11]
execute if data storage cartoonish:option/table makeUp{type:13} store result score @s CAL run data get storage cartoonish:option/table target.tag.optionTable[13]
scoreboard players add @s TEMP 1000
scoreboard players operation @s CAL *= @s TEMP
scoreboard players operation @s CAL /= #1000 TEMP
execute if data storage cartoonish:option/table makeUp{type:1} store result storage cartoonish:option/table target.tag.optionTable[1] int 1 run scoreboard players get @s CAL
execute if data storage cartoonish:option/table makeUp{type:3} store result storage cartoonish:option/table target.tag.optionTable[3] int 1 run scoreboard players get @s CAL
execute if data storage cartoonish:option/table makeUp{type:7} store result storage cartoonish:option/table target.tag.optionTable[7] int 1 run scoreboard players get @s CAL
execute if data storage cartoonish:option/table makeUp{type:9} store result storage cartoonish:option/table target.tag.optionTable[9] int 1 run scoreboard players get @s CAL
execute if data storage cartoonish:option/table makeUp{type:11} store result storage cartoonish:option/table target.tag.optionTable[11] int 1 run scoreboard players get @s CAL
execute if data storage cartoonish:option/table makeUp{type:13} store result storage cartoonish:option/table target.tag.optionTable[13] int 1 run scoreboard players get @s CAL
