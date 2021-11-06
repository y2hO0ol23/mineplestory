##### use bow #####
execute if entity @e[type=#minecraft:arrows,predicate=cartoonish:nbt/has_been_shot_0] run function cartoonish:bow/shoot
scoreboard players reset @a[scores={ct_shot_bow=1..}] ct_shot_bow

##### charge bow #####
scoreboard players add @a[tag=ct_using_bow] ct_using_bow 1
scoreboard players set @a[tag=!ct_using_bow] ct_using_bow 0
tag @a[tag=ct_using_bow] remove ct_using_bow

execute as @a[scores={ct_using_bow=1..}] store result score @s TEMP run data get entity @s SelectedItemSlot
execute as @a[scores={ct_using_bow=2..},tag=!ct_bow_on_left] unless score @s ct_item_slot = @s TEMP run scoreboard players set @s ct_using_bow 0
execute as @a[scores={ct_using_bow=1..}] run scoreboard players operation @s ct_item_slot = @s TEMP
execute as @a[scores={ct_using_bow=1}] unless data entity @s SelectedItem{id:"minecraft:bow"} run tag @s add ct_bow_on_left
tag @a[tag=ct_bow_on_left,scores={ct_using_bow=0}] remove ct_bow_on_left

