execute at @a run gamerule doMobSpawning true
#execute as @e[predicate=cartoonish:nbt/persistence_pequired_0] at @s unless entity @e[distance=0.1..10,type=!player] run tag @s add ct_reset_PersistenceRequired
#execute as @e[tag=ct_reset_PersistenceRequired] run data modify entity @s PersistenceRequired set value 1b

schedule function cartoonish:area/spawn_mob/off 1t