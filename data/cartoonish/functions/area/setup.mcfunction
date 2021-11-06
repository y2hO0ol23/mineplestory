scoreboard players set #area_distance TEMP 200
scoreboard players set #mid_area_distance TEMP 400

scoreboard players set #area_count TEMP 15

scoreboard objectives add ct_entity_level dummy

scoreboard objectives add ct_item_type dummy
scoreboard objectives add ct_type0_ratio dummy
scoreboard objectives add ct_type1_ratio dummy
scoreboard objectives add ct_type2_ratio dummy
scoreboard objectives add ct_type3_ratio dummy
scoreboard objectives add ct_type4_ratio dummy

function cartoonish:area/set_storage

schedule clear cartoonish:area/spawn_mob/on
schedule clear cartoonish:area/spawn_mob/off
function cartoonish:area/spawn_mob/on