#data modify storage cartoonish:option/table target set from
execute store success storage cartoonish:option/table first int 1 unless data storage cartoonish:option/table target.tag.options
execute unless data storage cartoonish:option/table {first:1} run function cartoonish:option/roll/remove_outputs
execute unless data storage cartoonish:option/table target.tag.rolltime run data modify storage cartoonish:option/table target.tag.rolltime set value [0,0,0,0,0]

data remove storage cartoonish:option/table target.tag.options
data remove storage cartoonish:option/table target.tag.optionOutput
data modify storage cartoonish:option/table target.tag.optionTable set value [0,1000,0,1000,0,0,0,1000,0,1000,0,1000,0,1000,0]

execute if data storage cartoonish:option/table target.tag{grade:3} run function cartoonish:option/roll/upgrade/unique
execute if data storage cartoonish:option/table target.tag{grade:2} run function cartoonish:option/roll/upgrade/epic
execute if data storage cartoonish:option/table target.tag{grade:1} run function cartoonish:option/roll/upgrade/rare
execute if data storage cartoonish:option/table target.tag{grade:0} run function cartoonish:option/roll/upgrade/normal
execute if score @s random_data < @s TEMP run tag @s add ct_option_upgrade

#reset options
function cartoonish:option/roll/add
function cartoonish:option/roll/add
function cartoonish:option/roll/add

function cartoonish:option/roll/set_outputs

execute store result storage cartoonish:option/table target.tag.ct_bug_fix int 1 run scoreboard players get #ct_bug_fix TEMP

function cartoonish:option/roll/cal_stat