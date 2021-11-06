execute if entity @e[advancements={minecraft:end/was_root=true}] run function cartoonish:the_end/clear

execute if entity @a[advancements={cartoonish:the_end/bastion_remnant/hoglin=true}] unless score .bastion_hoglin TEMP matches 1 run scoreboard players set .bastion_hoglin TEMP 1
execute if entity @a[advancements={cartoonish:the_end/bastion_remnant/piglin=true}] unless score .bastion_piglin TEMP matches 1 run scoreboard players set .bastion_piglin TEMP 1
execute if entity @a[advancements={cartoonish:the_end/bastion_remnant/piglin_brute=true}] unless score .bastion_piglin_brute TEMP matches 1 run scoreboard players set .bastion_piglin_brute TEMP 1

execute if entity @a[advancements={cartoonish:the_end/fortress/blaze=true}] unless score .fortress_blaze TEMP matches 1 run scoreboard players set .fortress_blaze TEMP 1
execute if entity @a[advancements={cartoonish:the_end/fortress/skeletons=true}] unless score .fortress_skeletons TEMP matches 1 run scoreboard players set .fortress_skeletons TEMP 1
execute if entity @a[advancements={cartoonish:the_end/fortress/zombified_piglin=true}] unless score .fortress_zombified_piglin TEMP matches 1 run scoreboard players set .fortress_zombified_piglin TEMP 1

execute if entity @a[advancements={cartoonish:the_end/mansion/evoker=true}] unless score .mansion_evoker TEMP matches 1 run scoreboard players set .mansion_evoker TEMP 1
execute if entity @a[advancements={cartoonish:the_end/mansion/vindicator=true}] unless score .mansion_vindicator TEMP matches 1 run scoreboard players set .mansion_vindicator TEMP 1

execute if entity @a[advancements={cartoonish:the_end/elder_guardian=true}] unless score .elder_guardian TEMP matches 1 run scoreboard players set .elder_guardian TEMP 1

execute if entity @a[advancements={cartoonish:the_end/wither=true}] unless score .wither TEMP matches 1 run scoreboard players set .wither TEMP 1

scoreboard players set #sum ct_end_Adv_basti 0
scoreboard players operation #sum ct_end_Adv_basti += .bastion_hoglin TEMP
scoreboard players operation #sum ct_end_Adv_basti += .bastion_piglin TEMP
scoreboard players operation #sum ct_end_Adv_basti += .bastion_piglin_brute TEMP
scoreboard players operation @a[gamemode=!spectator] ct_end_Adv_basti = #sum ct_end_Adv_basti

scoreboard players set #sum ct_end_Adv_fortr 0
scoreboard players operation #sum ct_end_Adv_fortr += .fortress_blaze TEMP
scoreboard players operation #sum ct_end_Adv_fortr += .fortress_skeletons TEMP
scoreboard players operation #sum ct_end_Adv_fortr += .fortress_zombified_piglin TEMP
scoreboard players operation @a[gamemode=!spectator] ct_end_Adv_fortr = #sum ct_end_Adv_fortr

scoreboard players set #sum ct_end_Adv_mansi 0
scoreboard players operation #sum ct_end_Adv_mansi += .mansion_evoker TEMP
scoreboard players operation #sum ct_end_Adv_mansi += .mansion_vindicator TEMP
scoreboard players operation @a[gamemode=!spectator] ct_end_Adv_mansi = #sum ct_end_Adv_mansi

scoreboard players operation @a[gamemode=!spectator] ct_end_Adv_elder = .elder_guardian TEMP
scoreboard players operation @a[gamemode=!spectator] ct_end_Adv_withe = .wither TEMP

execute unless entity @a[advancements={minecraft:end/root=true}] as @e[type=eye_of_ender] run data modify entity @s Motion set value [0.0d,0.0d,0.0d]
#function cartoonish:the_end/ender_eyes/loop
