data modify entity @s ArmorItems[3].tag.OwnerCheck set from entity @s ArmorItems[3].tag.Owner
execute store success score @s TEMP run data modify entity @s ArmorItems[3].tag.OwnerCheck set from entity @p[tag=this] UUID
execute if score @s TEMP matches 0 at @s positioned ~ ~1.38 ~ run function cartoonish:death/pickup/start
