data modify storage cartoonish:option/table starforceOutput append from storage cartoonish:option/table starforce.output[1]

scoreboard players remove @s TEMP 1
execute if score @s TEMP matches 1.. run function cartoonish:option/starforce/output/on