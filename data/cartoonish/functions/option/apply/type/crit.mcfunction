execute if entity @s[tag=ct_is_crit] at @s run playsound minecraft:entity.iron_golem.damage player @a ~ ~ ~ 2 1.5 0
function cartoonish:option/apply/type/crit/off

scoreboard players set @s random 1000
function random:generate
execute if score @s random_data < @s ct_crit_per run function cartoonish:option/apply/type/crit/on

scoreboard players set @s ct_damage_dealt 0