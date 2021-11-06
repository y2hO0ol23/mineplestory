execute as @e[type=armor_stand,tag=ct_death_mark] at @s positioned ~ ~1.38 ~ if entity @p[gamemode=!spectator,distance=..1,predicate=cartoonish:nbt/death_time_0] run function cartoonish:death/pickup/start

execute if entity @a[scores={ct_death=1..}] run function cartoonish:death/loop/start
