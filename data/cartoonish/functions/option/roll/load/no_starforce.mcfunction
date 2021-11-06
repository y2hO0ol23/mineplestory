execute unless data storage cartoonish:option/table {first:1} run data remove storage cartoonish:option/table target.tag.display.Lore[0]
execute store result score @s TEMP run data get storage cartoonish:option/table target.tag.starForceLevel
function cartoonish:option/starforce/get_ratio/start

data merge block 0 0 0 {Text1:"[{\"text\":\"\"}]"}
execute store result score @s TEMP run data get storage cartoonish:option/table target.tag.starForceLevel
scoreboard players add @s TEMP 1
execute store result score @s CNT run data get storage cartoonish:option/table target.tag.grade
execute if score @s CNT matches 0 run scoreboard players set @s CNT 1
scoreboard players operation @s CNT *= #5 TEMP
execute if score @s TEMP <= @s CNT run function cartoonish:option/starforce/output/set_ratio
data modify storage cartoonish:option/table target.tag.display.Lore insert 0 from block 0 0 0 Text1