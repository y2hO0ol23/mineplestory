execute store result score @s CAL run data get entity @s ActiveEffects[{Id:8b}].Amplifier
execute if entity @s[type=player] run function cartoonish:option/apply/type/jump/player
execute unless entity @s[type=player] run function cartoonish:option/apply/type/jump/player