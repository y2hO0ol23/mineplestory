scoreboard players set @s TEMP 2
scoreboard players set @s CAL 5
execute if entity @s[gamemode=!spectator] at @s anchored eyes positioned ^ ^ ^ run function cartoonish:option/reward/cube
