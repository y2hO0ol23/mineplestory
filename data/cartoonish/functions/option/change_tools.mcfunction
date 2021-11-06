execute in overworld run summon marker 0 0 0 {Tags:["ct_goto_option_checker"]}
execute as @p[tag=ct_has_option] run function cartoonish:option/change_tools/loop

kill @e[tag=ct_goto_option_checker]
tag @e[tag=ct_found_option_checker] remove ct_found_option_checker