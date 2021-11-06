execute store success score @s TEMP run attribute @s minecraft:generic.max_health get
tag @s[scores={TEMP=0}] add ct_no_hp
tag @s[type=armor_stand] add ct_no_hp
tag @s add ct_detect_hp
