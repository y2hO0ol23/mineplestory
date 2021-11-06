execute as @a store result score @s CAL run clear @s #cartoonish:weapons{ct_setup:1} 0
execute as @a store result score @s TEMP run clear @s #cartoonish:weapons 0
execute as @a run scoreboard players operation @s TEMP -= @s CAL
execute in overworld as @p[scores={TEMP=1..}] run function cartoonish:option/reset/player
tag @e[type=!player,tag=!ct_no_hp,tag=!ct_has_option,tag=!ct_check_option] add ct_option_target
tag @e[type=!player,tag=!ct_no_hp,tag=!ct_has_option,tag=!ct_check_option] add ct_check_option
execute as @e[tag=ct_option_target] unless predicate cartoonish:option/public/armoritems0 unless predicate cartoonish:option/public/armoritems1 unless predicate cartoonish:option/public/armoritems2 unless predicate cartoonish:option/public/armoritems3 unless predicate cartoonish:option/public/handitems0 run tag @s remove ct_option_target
execute in overworld as @e[tag=ct_option_target,limit=1] run function cartoonish:option/reset/entity

execute as @a[scores={ct_able_itemslot=1..}] run function cartoonish:option/check/take_off
execute as @a run function cartoonish:option/check/move_slot
execute as @a[advancements={cartoonish:option/move_weapon=true}] run function cartoonish:option/apply/player
execute as @a[scores={ct_option_jump=1..}] run function cartoonish:option/apply/jump

execute as @a if data entity @s Inventory[{Slot:-106b}].tag.ct_break run function cartoonish:option/check/item_break

scoreboard players enable @a stat
execute as @a[scores={stat=1..}] run function cartoonish:option/output
scoreboard players enable @a fix
execute as @a[scores={fix=1..},limit=1] run function cartoonish:option/fix

#cube
execute as @a[predicate=cartoonish:nbt/selected_item/cube,predicate=cartoonish:nbt/inventory/m106/ct_setup,tag=ct_roll_trigger,limit=1,tag=!ct_item_break] run function cartoonish:option/roll/re
execute as @a[predicate=!cartoonish:nbt/inventory/m106/grade_4,predicate=cartoonish:nbt/inventory/m106/cube,predicate=cartoonish:nbt/selected_item/ancient_debris,tag=ct_upgrade_trigger,limit=1] at @s run function cartoonish:option/reward/upgrade
tag @a[tag=ct_roll_trigger] remove ct_roll_trigger
tag @a[tag=ct_upgrade_trigger] remove ct_upgrade_trigger
tag @a[predicate=cartoonish:nbt/inventory/m106/cube] add ct_roll_trigger
tag @a[predicate=cartoonish:nbt/inventory/m106/ancient_debris] add ct_upgrade_trigger

#star force
execute as @a[predicate=cartoonish:nbt/selected_item/emerald,predicate=cartoonish:nbt/inventory/m106/ct_setup,tag=ct_starforce_trigger,limit=1,tag=!ct_item_break] run tag @s add ct_try_starforce
tag @a[tag=ct_starforce_trigger] remove ct_starforce_trigger
tag @a[predicate=cartoonish:nbt/inventory/m106/emerald] add ct_starforce_trigger
execute if entity @a[tag=ct_try_starforce] in overworld run function cartoonish:option/starforce/main
tag @a[tag=ct_item_break] remove ct_item_break

#critical
execute as @a[scores={ct_damage_dealt=1..}] run function cartoonish:option/apply/type/crit