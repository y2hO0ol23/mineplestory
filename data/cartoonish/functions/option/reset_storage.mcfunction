scoreboard players set #top ct_option_number 0
scoreboard players reset @e ct_option_number
data remove storage cartoonish:option number
kill @e[type=marker,tag=ct_option_check_changed]