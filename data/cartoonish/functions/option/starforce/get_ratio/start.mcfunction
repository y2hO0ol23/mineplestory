data modify storage cartoonish:option/table starforceClone set from storage cartoonish:option/table starforce.ratio
execute if score @s TEMP matches 1.. run function cartoonish:option/starforce/get_ratio/loop

data merge storage cartoonish:option/table {starforceRatio:[0,0,0,0]}
data modify storage cartoonish:option/table starforceRatio[0] set from storage cartoonish:option/table starforceClone.success[0]
data modify storage cartoonish:option/table starforceRatio[1] set from storage cartoonish:option/table starforceClone.failed[0]
data modify storage cartoonish:option/table starforceRatio[2] set from storage cartoonish:option/table starforceClone.degradation[0]
data modify storage cartoonish:option/table starforceRatio[3] set from storage cartoonish:option/table starforceClone.destroy[0]