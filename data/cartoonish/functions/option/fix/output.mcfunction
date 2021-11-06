data remove storage cartoonish:option/table target.tag.display.Lore
data modify storage cartoonish:option/table first set from storage cartoonish:option/table target.tag.starForceLevel
execute unless data storage cartoonish:option/table {first:0} run data remove storage cartoonish:option/table first
execute if data storage cartoonish:option/table {first:0} run data modify storage cartoonish:option/table first set value 1
execute unless data storage cartoonish:option/table first run tag @s add ct_option_upgrade
function cartoonish:option/roll/set_outputs
