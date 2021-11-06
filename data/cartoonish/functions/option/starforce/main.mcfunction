summon armor_stand 0 0 0 {Tags:["ct_star_force_item"]}
setblock 0 0 0 oak_sign
execute as @e[tag=ct_try_starforce,limit=1] run function cartoonish:option/starforce/loop
kill @e[tag=ct_star_force_item,type=armor_stand]
setblock 0 0 0 bedrock