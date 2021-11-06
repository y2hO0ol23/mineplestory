execute store result score @s CAL run clear @s knowledge_book
scoreboard players set @s TEMP 0
execute anchored eyes positioned ^ ^ ^ run function cartoonish:option/reward/cube

recipe take @s cartoonish:option/cube
advancement revoke @s only cartoonish:option/cube