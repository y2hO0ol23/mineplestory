summon armor_stand ~ ~3333 ~ {Tags:["this"],Marker:1b}
execute if data entity @s Inventory[{Slot:-106b}] unless data entity @s Inventory[{Slot:-106b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s weapon.offhand
execute if data entity @s Inventory[{Slot:-106b}] unless data entity @s Inventory[{Slot:-106b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:-106b}] unless data entity @s Inventory[{Slot:-106b}].tag{ct_setup:1} run item replace entity @s weapon.offhand from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:0b}] unless data entity @s Inventory[{Slot:0b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.0
execute if data entity @s Inventory[{Slot:0b}] unless data entity @s Inventory[{Slot:0b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:0b}] unless data entity @s Inventory[{Slot:0b}].tag{ct_setup:1} run item replace entity @s container.0 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:1b}] unless data entity @s Inventory[{Slot:1b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.1
execute if data entity @s Inventory[{Slot:1b}] unless data entity @s Inventory[{Slot:1b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:1b}] unless data entity @s Inventory[{Slot:1b}].tag{ct_setup:1} run item replace entity @s container.1 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:2b}] unless data entity @s Inventory[{Slot:2b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.2
execute if data entity @s Inventory[{Slot:2b}] unless data entity @s Inventory[{Slot:2b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:2b}] unless data entity @s Inventory[{Slot:2b}].tag{ct_setup:1} run item replace entity @s container.2 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:3b}] unless data entity @s Inventory[{Slot:3b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.3
execute if data entity @s Inventory[{Slot:3b}] unless data entity @s Inventory[{Slot:3b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:3b}] unless data entity @s Inventory[{Slot:3b}].tag{ct_setup:1} run item replace entity @s container.3 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:4b}] unless data entity @s Inventory[{Slot:4b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.4
execute if data entity @s Inventory[{Slot:4b}] unless data entity @s Inventory[{Slot:4b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:4b}] unless data entity @s Inventory[{Slot:4b}].tag{ct_setup:1} run item replace entity @s container.4 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:5b}] unless data entity @s Inventory[{Slot:5b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.5
execute if data entity @s Inventory[{Slot:5b}] unless data entity @s Inventory[{Slot:5b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:5b}] unless data entity @s Inventory[{Slot:5b}].tag{ct_setup:1} run item replace entity @s container.5 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:6b}] unless data entity @s Inventory[{Slot:6b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.6
execute if data entity @s Inventory[{Slot:6b}] unless data entity @s Inventory[{Slot:6b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:6b}] unless data entity @s Inventory[{Slot:6b}].tag{ct_setup:1} run item replace entity @s container.6 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:7b}] unless data entity @s Inventory[{Slot:7b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.7
execute if data entity @s Inventory[{Slot:7b}] unless data entity @s Inventory[{Slot:7b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:7b}] unless data entity @s Inventory[{Slot:7b}].tag{ct_setup:1} run item replace entity @s container.7 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:8b}] unless data entity @s Inventory[{Slot:8b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.8
execute if data entity @s Inventory[{Slot:8b}] unless data entity @s Inventory[{Slot:8b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:8b}] unless data entity @s Inventory[{Slot:8b}].tag{ct_setup:1} run item replace entity @s container.8 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:9b}] unless data entity @s Inventory[{Slot:9b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.9
execute if data entity @s Inventory[{Slot:9b}] unless data entity @s Inventory[{Slot:9b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:9b}] unless data entity @s Inventory[{Slot:9b}].tag{ct_setup:1} run item replace entity @s container.9 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:10b}] unless data entity @s Inventory[{Slot:10b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.10
execute if data entity @s Inventory[{Slot:10b}] unless data entity @s Inventory[{Slot:10b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:10b}] unless data entity @s Inventory[{Slot:10b}].tag{ct_setup:1} run item replace entity @s container.10 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:11b}] unless data entity @s Inventory[{Slot:11b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.11
execute if data entity @s Inventory[{Slot:11b}] unless data entity @s Inventory[{Slot:11b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:11b}] unless data entity @s Inventory[{Slot:11b}].tag{ct_setup:1} run item replace entity @s container.11 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:12b}] unless data entity @s Inventory[{Slot:12b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.12
execute if data entity @s Inventory[{Slot:12b}] unless data entity @s Inventory[{Slot:12b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:12b}] unless data entity @s Inventory[{Slot:12b}].tag{ct_setup:1} run item replace entity @s container.12 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:13b}] unless data entity @s Inventory[{Slot:13b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.13
execute if data entity @s Inventory[{Slot:13b}] unless data entity @s Inventory[{Slot:13b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:13b}] unless data entity @s Inventory[{Slot:13b}].tag{ct_setup:1} run item replace entity @s container.13 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:14b}] unless data entity @s Inventory[{Slot:14b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.14
execute if data entity @s Inventory[{Slot:14b}] unless data entity @s Inventory[{Slot:14b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:14b}] unless data entity @s Inventory[{Slot:14b}].tag{ct_setup:1} run item replace entity @s container.14 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:15b}] unless data entity @s Inventory[{Slot:15b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.15
execute if data entity @s Inventory[{Slot:15b}] unless data entity @s Inventory[{Slot:15b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:15b}] unless data entity @s Inventory[{Slot:15b}].tag{ct_setup:1} run item replace entity @s container.15 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:16b}] unless data entity @s Inventory[{Slot:16b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.16
execute if data entity @s Inventory[{Slot:16b}] unless data entity @s Inventory[{Slot:16b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:16b}] unless data entity @s Inventory[{Slot:16b}].tag{ct_setup:1} run item replace entity @s container.16 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:17b}] unless data entity @s Inventory[{Slot:17b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.17
execute if data entity @s Inventory[{Slot:17b}] unless data entity @s Inventory[{Slot:17b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:17b}] unless data entity @s Inventory[{Slot:17b}].tag{ct_setup:1} run item replace entity @s container.17 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:18b}] unless data entity @s Inventory[{Slot:18b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.18
execute if data entity @s Inventory[{Slot:18b}] unless data entity @s Inventory[{Slot:18b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:18b}] unless data entity @s Inventory[{Slot:18b}].tag{ct_setup:1} run item replace entity @s container.18 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:19b}] unless data entity @s Inventory[{Slot:19b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.19
execute if data entity @s Inventory[{Slot:19b}] unless data entity @s Inventory[{Slot:19b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:19b}] unless data entity @s Inventory[{Slot:19b}].tag{ct_setup:1} run item replace entity @s container.19 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:20b}] unless data entity @s Inventory[{Slot:20b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.20
execute if data entity @s Inventory[{Slot:20b}] unless data entity @s Inventory[{Slot:20b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:20b}] unless data entity @s Inventory[{Slot:20b}].tag{ct_setup:1} run item replace entity @s container.20 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:21b}] unless data entity @s Inventory[{Slot:21b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.21
execute if data entity @s Inventory[{Slot:21b}] unless data entity @s Inventory[{Slot:21b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:21b}] unless data entity @s Inventory[{Slot:21b}].tag{ct_setup:1} run item replace entity @s container.21 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:22b}] unless data entity @s Inventory[{Slot:22b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.22
execute if data entity @s Inventory[{Slot:22b}] unless data entity @s Inventory[{Slot:22b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:22b}] unless data entity @s Inventory[{Slot:22b}].tag{ct_setup:1} run item replace entity @s container.22 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:23b}] unless data entity @s Inventory[{Slot:23b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.23
execute if data entity @s Inventory[{Slot:23b}] unless data entity @s Inventory[{Slot:23b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:23b}] unless data entity @s Inventory[{Slot:23b}].tag{ct_setup:1} run item replace entity @s container.23 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:24b}] unless data entity @s Inventory[{Slot:24b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.24
execute if data entity @s Inventory[{Slot:24b}] unless data entity @s Inventory[{Slot:24b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:24b}] unless data entity @s Inventory[{Slot:24b}].tag{ct_setup:1} run item replace entity @s container.24 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:25b}] unless data entity @s Inventory[{Slot:25b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.25
execute if data entity @s Inventory[{Slot:25b}] unless data entity @s Inventory[{Slot:25b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:25b}] unless data entity @s Inventory[{Slot:25b}].tag{ct_setup:1} run item replace entity @s container.25 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:26b}] unless data entity @s Inventory[{Slot:26b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.26
execute if data entity @s Inventory[{Slot:26b}] unless data entity @s Inventory[{Slot:26b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:26b}] unless data entity @s Inventory[{Slot:26b}].tag{ct_setup:1} run item replace entity @s container.26 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:27b}] unless data entity @s Inventory[{Slot:27b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.27
execute if data entity @s Inventory[{Slot:27b}] unless data entity @s Inventory[{Slot:27b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:27b}] unless data entity @s Inventory[{Slot:27b}].tag{ct_setup:1} run item replace entity @s container.27 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:28b}] unless data entity @s Inventory[{Slot:28b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.28
execute if data entity @s Inventory[{Slot:28b}] unless data entity @s Inventory[{Slot:28b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:28b}] unless data entity @s Inventory[{Slot:28b}].tag{ct_setup:1} run item replace entity @s container.28 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:29b}] unless data entity @s Inventory[{Slot:29b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.29
execute if data entity @s Inventory[{Slot:29b}] unless data entity @s Inventory[{Slot:29b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:29b}] unless data entity @s Inventory[{Slot:29b}].tag{ct_setup:1} run item replace entity @s container.29 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:30b}] unless data entity @s Inventory[{Slot:30b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.30
execute if data entity @s Inventory[{Slot:30b}] unless data entity @s Inventory[{Slot:30b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:30b}] unless data entity @s Inventory[{Slot:30b}].tag{ct_setup:1} run item replace entity @s container.30 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:31b}] unless data entity @s Inventory[{Slot:31b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.31
execute if data entity @s Inventory[{Slot:31b}] unless data entity @s Inventory[{Slot:31b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:31b}] unless data entity @s Inventory[{Slot:31b}].tag{ct_setup:1} run item replace entity @s container.31 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:32b}] unless data entity @s Inventory[{Slot:32b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.32
execute if data entity @s Inventory[{Slot:32b}] unless data entity @s Inventory[{Slot:32b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:32b}] unless data entity @s Inventory[{Slot:32b}].tag{ct_setup:1} run item replace entity @s container.32 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:33b}] unless data entity @s Inventory[{Slot:33b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.33
execute if data entity @s Inventory[{Slot:33b}] unless data entity @s Inventory[{Slot:33b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:33b}] unless data entity @s Inventory[{Slot:33b}].tag{ct_setup:1} run item replace entity @s container.33 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:34b}] unless data entity @s Inventory[{Slot:34b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.34
execute if data entity @s Inventory[{Slot:34b}] unless data entity @s Inventory[{Slot:34b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:34b}] unless data entity @s Inventory[{Slot:34b}].tag{ct_setup:1} run item replace entity @s container.34 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:35b}] unless data entity @s Inventory[{Slot:35b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s container.35
execute if data entity @s Inventory[{Slot:35b}] unless data entity @s Inventory[{Slot:35b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:35b}] unless data entity @s Inventory[{Slot:35b}].tag{ct_setup:1} run item replace entity @s container.35 from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:100b}] unless data entity @s Inventory[{Slot:100b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s armor.feet
execute if data entity @s Inventory[{Slot:100b}] unless data entity @s Inventory[{Slot:100b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:100b}] unless data entity @s Inventory[{Slot:100b}].tag{ct_setup:1} run item replace entity @s armor.feet from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:101b}] unless data entity @s Inventory[{Slot:101b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s armor.legs
execute if data entity @s Inventory[{Slot:101b}] unless data entity @s Inventory[{Slot:101b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:101b}] unless data entity @s Inventory[{Slot:101b}].tag{ct_setup:1} run item replace entity @s armor.legs from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:102b}] unless data entity @s Inventory[{Slot:102b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s armor.chest
execute if data entity @s Inventory[{Slot:102b}] unless data entity @s Inventory[{Slot:102b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:102b}] unless data entity @s Inventory[{Slot:102b}].tag{ct_setup:1} run item replace entity @s armor.chest from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand
execute if data entity @s Inventory[{Slot:103b}] unless data entity @s Inventory[{Slot:103b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s armor.head
execute if data entity @s Inventory[{Slot:103b}] unless data entity @s Inventory[{Slot:103b}].tag{ct_setup:1} run function cartoonish:option/reset/item
execute if data entity @s Inventory[{Slot:103b}] unless data entity @s Inventory[{Slot:103b}].tag{ct_setup:1} run item replace entity @s armor.head from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand

scoreboard players set @s TEMP 0
kill @e[type=armor_stand,tag=this,limit=1]
execute as @p[scores={TEMP=1..}] at @s run function cartoonish:option/reset/player