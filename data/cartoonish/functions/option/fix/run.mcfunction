data modify storage cartoonish:option/table target set from entity @e[type=armor_stand,tag=ct_star_force_item,limit=1] HandItems[1]
function cartoonish:option/fix/stat
function cartoonish:option/fix/output
data modify entity @e[type=armor_stand,tag=ct_star_force_item,limit=1] HandItems[1] set from storage cartoonish:option/table target
execute store result entity @e[type=armor_stand,tag=ct_star_force_item,limit=1] HandItems[1].tag.ct_bug_fix int 1 run scoreboard players get #ct_bug_fix TEMP
