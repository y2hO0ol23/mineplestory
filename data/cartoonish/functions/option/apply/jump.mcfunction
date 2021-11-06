scoreboard players operation @s TEMP = @s ct_option_jump
execute store result score @s CAL run data get entity @s ActiveEffects[{Id:8b}].Duration
execute if score @s CAL matches ..20 run effect clear @s jump_boost
execute if score @s TEMP matches 1.. run function cartoonish:option/apply/type/jump