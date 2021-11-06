data remove storage cartoonish:option/table starforceClone.success[0]
data remove storage cartoonish:option/table starforceClone.failed[0]
data remove storage cartoonish:option/table starforceClone.degradation[0]
data remove storage cartoonish:option/table starforceClone.destroy[0]

scoreboard players remove @s TEMP 1
execute if score @s TEMP matches 1.. run function cartoonish:option/starforce/get_ratio/loop