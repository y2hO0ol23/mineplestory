data modify storage cartoonish:option/table starforceOutput append from storage cartoonish:option/table starforce.output[0]

scoreboard players remove @s CNT 1
execute if score @s CNT matches 1.. run function cartoonish:option/starforce/output/off