function cartoonish:option/set_storage
data modify storage cartoonish:option/table starforce.output set value ["☆","★","↑:","=:","↓:","X:","Cost "]

scoreboard objectives add ct_option0 dummy
scoreboard objectives add ct_option1 dummy
scoreboard objectives add ct_option2 dummy
scoreboard objectives add ct_option3 dummy
scoreboard objectives add ct_option4 dummy
scoreboard objectives add ct_option5 dummy
scoreboard objectives add ct_option6 dummy
scoreboard objectives add ct_option7 dummy
scoreboard objectives add ct_option8 dummy
scoreboard objectives add ct_option9 dummy
scoreboard objectives add ct_option10 dummy
scoreboard objectives add ct_option11 dummy
scoreboard objectives add ct_option12 dummy
scoreboard objectives add ct_option13 dummy
scoreboard objectives add ct_option14 dummy
scoreboard objectives add ct_starforce dummy
scoreboard objectives add ct_option_jump dummy
scoreboard objectives add ct_option_ls dummy

scoreboard objectives add ct_able_itemslot dummy
scoreboard objectives add ct_hand_slot dummy
scoreboard objectives add stat trigger
scoreboard objectives add fix trigger
scoreboard objectives add ct_option_reset minecraft.custom:minecraft.leave_game

scoreboard objectives add ct_damage_dealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add ct_crit_dmg dummy
scoreboard objectives add ct_crit_per dummy
scoreboard objectives add ct_damage_was dummy

function cartoonish:option/reset_storage

#advancement
scoreboard objectives add ct_cube1_cnt dummy
scoreboard objectives add ct_cube2_cnt dummy
scoreboard objectives add ct_cube3_cnt dummy
scoreboard objectives add ct_cube4_cnt dummy
scoreboard objectives add ct_cube5_cnt dummy

#can not be 0
scoreboard players set #ct_bug_fix TEMP 3