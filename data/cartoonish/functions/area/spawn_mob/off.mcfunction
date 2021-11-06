execute at @a run gamerule doMobSpawning false
execute as @e[tag=ct_reset_PersistenceRequired] run data modify entity @s PersistenceRequired set value 0b
tag @e[tag=ct_reset_PersistenceRequired] remove ct_reset_PersistenceRequired

schedule function cartoonish:area/spawn_mob/on 2t