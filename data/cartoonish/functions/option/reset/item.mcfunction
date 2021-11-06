function cartoonish:option/reset/grade
execute if entity @s[type=!player] run function cartoonish:option/reset/item/not_player
execute as @e[type=armor_stand,tag=this,limit=1] if data entity @s HandItems[0].tag.grade unless data entity @s HandItems[0].tag.CUBE run function cartoonish:option/reset/need_roll
