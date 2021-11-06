#"HP+", "HP%"
execute store result score @s TEMP run attribute @s generic.max_health get 10
scoreboard players operation @s CAL = @s TEMP
scoreboard players operation @s CAL %= #10 TEMP
scoreboard players operation @s TEMP /= #10 TEMP
tellraw @s [{"text":"Max Health : "},{"score":{"name":"@s","objective": "TEMP"}},{"text":"."},{"score":{"name":"@s","objective": "CAL"}}]
#"Armor+", "Armor%"
execute store result score @s TEMP run attribute @s generic.armor get 10
scoreboard players operation @s CAL = @s TEMP
scoreboard players operation @s CAL %= #10 TEMP
scoreboard players operation @s TEMP /= #10 TEMP
tellraw @s [{"text":"Armor : "},{"score":{"name":"@s","objective": "TEMP"}},{"text":"."},{"score":{"name":"@s","objective": "CAL"}}]
#"ArmorToughness+", "ArmorToughness%"
execute store result score @s TEMP run attribute @s generic.armor_toughness get 10
scoreboard players operation @s CAL = @s TEMP
scoreboard players operation @s CAL %= #10 TEMP
scoreboard players operation @s TEMP /= #10 TEMP
tellraw @s [{"text":"Armor Toughness : "},{"score":{"name":"@s","objective": "TEMP"}},{"text":"."},{"score":{"name":"@s","objective": "CAL"}}]
#"SPD+", "SPD%"
execute store result score @s TEMP run attribute @s generic.movement_speed get 1000
tellraw @s [{"text":"Speed : "},{"score":{"name":"@s","objective": "TEMP"}},{"text":"%"}]
#"KnockbackResist+", "KnockbackResist%"
execute store result score @s TEMP run attribute @s generic.knockback_resistance get 1000
scoreboard players operation @s CAL = @s TEMP
scoreboard players operation @s CAL %= #10 TEMP
scoreboard players operation @s TEMP /= #10 TEMP
tellraw @s [{"text":"Knockback Resistence : "},{"score":{"name":"@s","objective": "TEMP"}},{"text":"%"}]
#"ATK+", "ATK%"
function cartoonish:option/apply/type/crit/off
execute store result score @s TEMP run attribute @s generic.attack_damage get 10
scoreboard players operation @s CAL = @s TEMP
scoreboard players operation @s CAL %= #10 TEMP
scoreboard players operation @s TEMP /= #10 TEMP
tellraw @s [{"text":"Attack Damage : "},{"score":{"name":"@s","objective": "TEMP"}},{"text":"."},{"score":{"name":"@s","objective": "CAL"}}]
function cartoonish:option/apply/type/crit
#"ATK Speed"
execute store result score @s TEMP run attribute @s generic.attack_speed get 10
scoreboard players operation @s CAL = @s TEMP
scoreboard players operation @s CAL %= #10 TEMP
scoreboard players operation @s TEMP /= #10 TEMP
tellraw @s [{"text":"Attack Speed : "},{"score":{"name":"@s","objective": "TEMP"}},{"text":"."},{"score":{"name":"@s","objective": "CAL"}}]
#"Critical"
scoreboard players operation @s TEMP = @s ct_crit_per
scoreboard players operation @s CAL = @s TEMP
scoreboard players operation @s CAL %= #10 TEMP
scoreboard players operation @s TEMP /= #10 TEMP
tellraw @s [{"text":"Critical percent : "},{"score":{"name":"@s","objective": "TEMP"}},{"text":"."},{"score":{"name":"@s","objective": "CAL"}},{"text":"%"}]
scoreboard players operation @s TEMP = @s ct_crit_dmg
scoreboard players operation @s CAL = @s TEMP
scoreboard players operation @s CAL %= #10 TEMP
scoreboard players operation @s TEMP /= #10 TEMP
tellraw @s [{"text":"Critical damage : "},{"score":{"name":"@s","objective": "TEMP"}},{"text":"."},{"score":{"name":"@s","objective": "CAL"}},{"text":"%"}]

scoreboard players reset @s stat
