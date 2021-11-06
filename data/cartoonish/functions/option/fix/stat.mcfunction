data modify storage cartoonish:option/table target.tag.optionOutput set value []

execute store result score @s TEMP run data get storage cartoonish:option/table target.tag.options[0].type
function cartoonish:option/roll/add/set_stat_table
data modify storage cartoonish:option/table target.tag.optionOutput append from storage cartoonish:option/table stattable.output
execute store result score @s TEMP run data get storage cartoonish:option/table target.tag.options[1].type
function cartoonish:option/roll/add/set_stat_table
data modify storage cartoonish:option/table target.tag.optionOutput append from storage cartoonish:option/table stattable.output
execute store result score @s TEMP run data get storage cartoonish:option/table target.tag.options[2].type
function cartoonish:option/roll/add/set_stat_table
data modify storage cartoonish:option/table target.tag.optionOutput append from storage cartoonish:option/table stattable.output

data modify storage cartoonish:option/table target.tag.optionTable set value [0,1000,0,1000,0,0,0,1000,0,1000,0,1000,0,1000,0]

data modify storage cartoonish:option/table makeUp set from storage cartoonish:option/table target.tag.options[0]
function cartoonish:option/roll/add/set_option_table
data modify storage cartoonish:option/table makeUp set from storage cartoonish:option/table target.tag.options[1]
function cartoonish:option/roll/add/set_option_table
data modify storage cartoonish:option/table makeUp set from storage cartoonish:option/table target.tag.options[2]
function cartoonish:option/roll/add/set_option_table

function cartoonish:option/roll/cal_stat