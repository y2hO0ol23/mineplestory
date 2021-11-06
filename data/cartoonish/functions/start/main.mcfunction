execute as @e[tag=!ct_detect_hp] run function cartoonish:start/detect
tag @a[gamemode=!survival,gamemode=!adventure] add ct_no_hp
tag @a[gamemode=!creative,gamemode=!spectator] remove ct_no_hp