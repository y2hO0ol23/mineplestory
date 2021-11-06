num = [-106] + [i for i in range(4*9)] + [i for i in range(100,104)]
armor = ["feet","legs","chest","head"]
name = ["weapon.offhand"] + ["container."+str(i) for i in range(4*9)] + ["armor."+armor[i] for i in range(4)]
path = ".\\data\\cartoonish\\functions\\option\\reset"

weapons = ["minecraft:trident","minecraft:crossbow","minecraft:bow","minecraft:turtle_helmet","minecraft:leather_helmet","minecraft:leather_chestplate","minecraft:leather_leggings","minecraft:leather_boots","minecraft:chainmail_helmet","minecraft:chainmail_chestplate","minecraft:chainmail_leggings","minecraft:chainmail_boots","minecraft:golden_helmet","minecraft:golden_chestplate","minecraft:golden_leggings","minecraft:golden_boots","minecraft:iron_helmet","minecraft:iron_chestplate","minecraft:iron_leggings","minecraft:iron_boots","minecraft:diamond_helmet","minecraft:diamond_chestplate","minecraft:diamond_leggings","minecraft:diamond_boots","minecraft:netherite_helmet","minecraft:netherite_chestplate","minecraft:netherite_leggings","minecraft:netherite_boots","minecraft:wooden_sword","minecraft:stone_sword","minecraft:golden_sword","minecraft:iron_sword","minecraft:diamond_sword","minecraft:netherite_sword","minecraft:wooden_axe","minecraft:stone_axe","minecraft:golden_axe","minecraft:iron_axe","minecraft:diamond_axe","minecraft:netherite_axe","minecraft:wooden_pickaxe","minecraft:stone_pickaxe","minecraft:golden_pickaxe","minecraft:iron_pickaxe","minecraft:diamond_pickaxe","minecraft:netherite_pickaxe","minecraft:wooden_shovel","minecraft:stone_shovel","minecraft:golden_shovel","minecraft:iron_shovel","minecraft:diamond_shovel","minecraft:netherite_shovel","minecraft:wooden_hoe","minecraft:stone_hoe","minecraft:golden_hoe","minecraft:iron_hoe","minecraft:diamond_hoe","minecraft:netherite_hoe"]

with open(path+"\\player.mcfunction",'a') as main:
    main.truncate(0)
    main.seek(0)
    main.write('summon armor_stand ~ ~3333 ~ {Tags:["this"],Marker:1b}\n')
    for i in range(41):
        main.write("execute if data entity @s Inventory[{Slot:" + str(num[i]) + "b}] unless data entity @s Inventory[{Slot:" + str(num[i]) + "b}].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s " + name[i] + "\n")
        main.write("execute if data entity @s Inventory[{Slot:" + str(num[i]) + "b}] unless data entity @s Inventory[{Slot:" + str(num[i]) + "b}].tag{ct_setup:1} run function cartoonish:option/reset/item\n")
        main.write("execute if data entity @s Inventory[{Slot:" + str(num[i]) + "b}] unless data entity @s Inventory[{Slot:" + str(num[i]) + "b}].tag{ct_setup:1} run item replace entity @s " + name[i] + " from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand" + "\n")

    main.write('\n')
    main.write('scoreboard players set @s TEMP 0\n')
    main.write('kill @e[type=armor_stand,tag=this,limit=1]\n')
    main.write('execute as @p[scores={TEMP=1..}] at @s run function cartoonish:option/reset/player')

name = ["weapon.mainhand","weapon.offhand"]
with open(path+"\\entity.mcfunction",'a') as main:
    main.truncate(0)
    main.seek(0)
    main.write('summon armor_stand ~ ~3333 ~ {Tags:["this"],Marker:1b}\n')
    for i in range(4):
        main.write("execute if data entity @s ArmorItems[" + str(i) + "] unless data entity @s ArmorItems[" + str(i) + "].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s armor." + armor[i] + "\n")
        main.write("execute if data entity @s ArmorItems[" + str(i) + "] unless data entity @s ArmorItems[" + str(i) + "].tag{ct_setup:1} run function cartoonish:option/reset/item\n")
        main.write("execute if data entity @s ArmorItems[" + str(i) + "] unless data entity @s ArmorItems[" + str(i) + "].tag{ct_setup:1} run item replace entity @s armor." + armor[i] + " from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand" + "\n")
    for i in range(2):
        main.write("execute if data entity @s HandItems[" + str(i) + "] unless data entity @s HandItems[" + str(i) + "].tag{ct_setup:1} run item replace entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand from entity @s " + name[i] + "\n")
        main.write("execute if data entity @s HandItems[" + str(i) + "] unless data entity @s HandItems[" + str(i) + "].tag{ct_setup:1} run function cartoonish:option/reset/item\n")
        main.write("execute if data entity @s HandItems[" + str(i) + "] unless data entity @s HandItems[" + str(i) + "].tag{ct_setup:1} run item replace entity @s " + name[i] + " from entity @e[type=armor_stand,tag=this,limit=1] weapon.mainhand" + "\n")

    main.write("""
tag @s remove ct_option_target
kill @e[type=armor_stand,tag=this,limit=1]
execute as @e[tag=ct_option_target,limit=1] at @s run function cartoonish:option/reset/entity""")

with open(path+"\\grade.mcfunction",'a') as target:
    target.truncate(0)
    target.seek(0)
    for j in range(len(weapons)):
        if "trident" in weapons[j] or "netherite" in weapons[j] or "turtle" in weapons[j]:
            target.write('execute as @e[type=armor_stand,tag=this,limit=1] if data entity @s HandItems[{id:"' + weapons[j] + '"}] run data modify entity @s HandItems[0].tag.grade set value 4\n')
        elif "diamond" in weapons[j] or "netherite" in weapons[j]:
            target.write('execute as @e[type=armor_stand,tag=this,limit=1] if data entity @s HandItems[{id:"' + weapons[j] + '"}] run data modify entity @s HandItems[0].tag.grade set value 3\n')
        elif "iron" in weapons[j]:
            target.write('execute as @e[type=armor_stand,tag=this,limit=1] if data entity @s HandItems[{id:"' + weapons[j] + '"}] run data modify entity @s HandItems[0].tag.grade set value 2\n')
        elif "stone" in weapons[j] or "chainmail" in weapons[j] or "golden" in weapons[j]:
            target.write('execute as @e[type=armor_stand,tag=this,limit=1] if data entity @s HandItems[{id:"' + weapons[j] + '"}] run data modify entity @s HandItems[0].tag.grade set value 1\n')
        else:
            target.write('execute as @e[type=armor_stand,tag=this,limit=1] if data entity @s HandItems[{id:"' + weapons[j] + '"}] run data modify entity @s HandItems[0].tag.grade set value 0\n')