execute unless data storage cartoonish:option/table {first:1} if data storage cartoonish:option/table target.tag.starForceLevel run data remove storage cartoonish:option/table target.tag.display.Lore[0]
execute unless data storage cartoonish:option/table {first:1} if data storage cartoonish:option/table target.tag.starForceLevel run data remove storage cartoonish:option/table target.tag.display.Lore[0]

execute store result score @s CNT run data get storage cartoonish:option/table target.tag.grade
execute if score @s CNT matches 0 run scoreboard players set @s CNT 1
scoreboard players operation @s CNT *= #5 TEMP
execute store result score @s TEMP run data get storage cartoonish:option/table target.tag.starForceLevel
scoreboard players operation @s CNT -= @s TEMP
data modify storage cartoonish:option/table starforceOutput set value []
execute if score @s TEMP matches 1.. run function cartoonish:option/starforce/output/on
execute if score @s CNT matches 1.. run function cartoonish:option/starforce/output/off

data merge block 0 0 0 {Text1:"[{\"nbt\":\"starforceOutput[0]\",\"storage\":\"cartoonish:option/table\",\"color\":\"yellow\"},{\"nbt\":\"starforceOutput[1]\",\"storage\":\"cartoonish:option/table\",\"color\":\"yellow\"},{\"nbt\":\"starforceOutput[2]\",\"storage\":\"cartoonish:option/table\",\"color\":\"yellow\"},{\"nbt\":\"starforceOutput[3]\",\"storage\":\"cartoonish:option/table\",\"color\":\"yellow\"},{\"nbt\":\"starforceOutput[4]\",\"storage\":\"cartoonish:option/table\",\"color\":\"yellow\"},{\"text\":\" \"},{\"nbt\":\"starforceOutput[5]\",\"storage\":\"cartoonish:option/table\",\"color\":\"yellow\"},{\"nbt\":\"starforceOutput[6]\",\"storage\":\"cartoonish:option/table\",\"color\":\"yellow\"},{\"nbt\":\"starforceOutput[7]\",\"storage\":\"cartoonish:option/table\",\"color\":\"yellow\"},{\"nbt\":\"starforceOutput[8]\",\"storage\":\"cartoonish:option/table\",\"color\":\"yellow\"},{\"nbt\":\"starforceOutput[9]\",\"storage\":\"cartoonish:option/table\",\"color\":\"yellow\"}]"}
data merge block 0 0 0 {Text2:"[{\"nbt\":\"starforceOutput[10]\",\"storage\":\"cartoonish:option/table\",\"color\":\"yellow\"},{\"nbt\":\"starforceOutput[11]\",\"storage\":\"cartoonish:option/table\",\"color\":\"yellow\"},{\"nbt\":\"starforceOutput[12]\",\"storage\":\"cartoonish:option/table\",\"color\":\"yellow\"},{\"nbt\":\"starforceOutput[13]\",\"storage\":\"cartoonish:option/table\",\"color\":\"yellow\"},{\"nbt\":\"starforceOutput[14]\",\"storage\":\"cartoonish:option/table\",\"color\":\"yellow\"},{\"text\":\" \"},{\"nbt\":\"starforceOutput[15]\",\"storage\":\"cartoonish:option/table\",\"color\":\"yellow\"},{\"nbt\":\"starforceOutput[16]\",\"storage\":\"cartoonish:option/table\",\"color\":\"yellow\"},{\"nbt\":\"starforceOutput[17]\",\"storage\":\"cartoonish:option/table\",\"color\":\"yellow\"},{\"nbt\":\"starforceOutput[18]\",\"storage\":\"cartoonish:option/table\",\"color\":\"yellow\"},{\"nbt\":\"starforceOutput[19]\",\"storage\":\"cartoonish:option/table\",\"color\":\"yellow\"}]"}

data modify storage cartoonish:option/table target.tag.display.Lore insert 0 from block 0 0 0 Text2
data modify storage cartoonish:option/table target.tag.display.Lore insert 0 from block 0 0 0 Text1

data remove storage cartoonish:option/table target.tag.display.Lore[2]
execute store result score @s TEMP run data get storage cartoonish:option/table target.tag.starForceLevel
function cartoonish:option/starforce/get_ratio/start

data merge block 0 0 0 {Text1:"[{\"text\":\"\"}]"}
execute store result score @s TEMP run data get storage cartoonish:option/table target.tag.starForceLevel
scoreboard players add @s TEMP 1
execute store result score @s CNT run data get storage cartoonish:option/table target.tag.grade
execute if score @s CNT matches 0 run scoreboard players set @s CNT 1
scoreboard players operation @s CNT *= #5 TEMP
execute if score @s TEMP <= @s CNT run function cartoonish:option/starforce/output/set_ratio
data modify storage cartoonish:option/table target.tag.display.Lore insert 2 from block 0 0 0 Text1