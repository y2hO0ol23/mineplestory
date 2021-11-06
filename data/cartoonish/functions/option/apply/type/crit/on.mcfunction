tag @s add ct_is_crit
scoreboard players operation @s TEMP = @s ct_crit_dmg
scoreboard players operation @s TEMP /= #10 TEMP
scoreboard players remove @s TEMP 100
execute unless score @s TEMP matches ..10240 run scoreboard players set @s TEMP 10240

execute if score @s TEMP matches 8192.. run attribute @s generic.attack_damage modifier add 63617274-6f6f-6e69-7368-637269740ad "ct_crit" 81.92 multiply_base
execute if score @s TEMP matches 8192.. run scoreboard players remove @s TEMP 8192
execute if score @s TEMP matches 4096.. run attribute @s generic.attack_damage modifier add 63617274-6f6f-6e69-7368-637269740ac "ct_crit" 40.96 multiply_base
execute if score @s TEMP matches 4096.. run scoreboard players remove @s TEMP 4096
execute if score @s TEMP matches 2048.. run attribute @s generic.attack_damage modifier add 63617274-6f6f-6e69-7368-637269740ab "ct_crit" 20.48 multiply_base
execute if score @s TEMP matches 2048.. run scoreboard players remove @s TEMP 2048
execute if score @s TEMP matches 1024.. run attribute @s generic.attack_damage modifier add 63617274-6f6f-6e69-7368-637269740aa "ct_crit" 10.24 multiply_base
execute if score @s TEMP matches 1024.. run scoreboard players remove @s TEMP 1024
execute if score @s TEMP matches 512.. run attribute @s generic.attack_damage modifier add 63617274-6f6f-6e69-7368-637269740a9 "ct_crit" 5.12 multiply_base
execute if score @s TEMP matches 512.. run scoreboard players remove @s TEMP 512
execute if score @s TEMP matches 256.. run attribute @s generic.attack_damage modifier add 63617274-6f6f-6e69-7368-637269740a8 "ct_crit" 2.56 multiply_base
execute if score @s TEMP matches 256.. run scoreboard players remove @s TEMP 256
execute if score @s TEMP matches 128.. run attribute @s generic.attack_damage modifier add 63617274-6f6f-6e69-7368-637269740a7 "ct_crit" 1.28 multiply_base
execute if score @s TEMP matches 128.. run scoreboard players remove @s TEMP 128
execute if score @s TEMP matches 64.. run attribute @s generic.attack_damage modifier add 63617274-6f6f-6e69-7368-637269740a6 "ct_crit" 0.64 multiply_base
execute if score @s TEMP matches 64.. run scoreboard players remove @s TEMP 64
execute if score @s TEMP matches 32.. run attribute @s generic.attack_damage modifier add 63617274-6f6f-6e69-7368-637269740a5 "ct_crit" 0.32 multiply_base
execute if score @s TEMP matches 32.. run scoreboard players remove @s TEMP 32
execute if score @s TEMP matches 16.. run attribute @s generic.attack_damage modifier add 63617274-6f6f-6e69-7368-637269740a4 "ct_crit" 0.16 multiply_base
execute if score @s TEMP matches 16.. run scoreboard players remove @s TEMP 16
execute if score @s TEMP matches 8.. run attribute @s generic.attack_damage modifier add 63617274-6f6f-6e69-7368-637269740a3 "ct_crit" 0.08 multiply_base
execute if score @s TEMP matches 8.. run scoreboard players remove @s TEMP 8
execute if score @s TEMP matches 4.. run attribute @s generic.attack_damage modifier add 63617274-6f6f-6e69-7368-637269740a2 "ct_crit" 0.04 multiply_base
execute if score @s TEMP matches 4.. run scoreboard players remove @s TEMP 4
execute if score @s TEMP matches 2.. run attribute @s generic.attack_damage modifier add 63617274-6f6f-6e69-7368-637269740a1 "ct_crit" 0.02 multiply_base
execute if score @s TEMP matches 2.. run scoreboard players remove @s TEMP 2
execute if score @s TEMP matches 1.. run attribute @s generic.attack_damage modifier add 63617274-6f6f-6e69-7368-637269740a0 "ct_crit" 0.01 multiply_base
execute if score @s TEMP matches 1.. run scoreboard players remove @s TEMP 1
