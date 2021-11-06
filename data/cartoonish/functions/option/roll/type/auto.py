
weapons = ["minecraft:trident","minecraft:crossbow","minecraft:bow","minecraft:turtle_helmet","minecraft:leather_helmet","minecraft:leather_chestplate","minecraft:leather_leggings","minecraft:leather_boots","minecraft:chainmail_helmet","minecraft:chainmail_chestplate","minecraft:chainmail_leggings","minecraft:chainmail_boots","minecraft:golden_helmet","minecraft:golden_chestplate","minecraft:golden_leggings","minecraft:golden_boots","minecraft:iron_helmet","minecraft:iron_chestplate","minecraft:iron_leggings","minecraft:iron_boots","minecraft:diamond_helmet","minecraft:diamond_chestplate","minecraft:diamond_leggings","minecraft:diamond_boots","minecraft:netherite_helmet","minecraft:netherite_chestplate","minecraft:netherite_leggings","minecraft:netherite_boots","minecraft:wooden_sword","minecraft:stone_sword","minecraft:golden_sword","minecraft:iron_sword","minecraft:diamond_sword","minecraft:netherite_sword","minecraft:wooden_axe","minecraft:stone_axe","minecraft:golden_axe","minecraft:iron_axe","minecraft:diamond_axe","minecraft:netherite_axe","minecraft:wooden_pickaxe","minecraft:stone_pickaxe","minecraft:golden_pickaxe","minecraft:iron_pickaxe","minecraft:diamond_pickaxe","minecraft:netherite_pickaxe","minecraft:wooden_shovel","minecraft:stone_shovel","minecraft:golden_shovel","minecraft:iron_shovel","minecraft:diamond_shovel","minecraft:netherite_shovel","minecraft:wooden_hoe","minecraft:stone_hoe","minecraft:golden_hoe","minecraft:iron_hoe","minecraft:diamond_hoe","minecraft:netherite_hoe"]

with open(".\\data\\cartoonish\\functions\\option\\roll\\type\\main.mcfunction",'a') as f:
    f.truncate(0)
    f.seek(0)
    for ele in weapons:
        if "bow" in ele:
            f.write('execute if data storage cartoonish:option/table target{id:"' + ele + '"} run function cartoonish:option/roll/type/projectile\n')
        elif "boots" in ele:
            f.write('execute if data storage cartoonish:option/table target{id:"' + ele + '"} run function cartoonish:option/roll/type/boots\n')
        elif "helmet" in ele or "chestplate" in ele or "leggings" in ele:
            f.write('execute if data storage cartoonish:option/table target{id:"' + ele + '"} run function cartoonish:option/roll/type/armor\n')
        else:
            f.write('execute if data storage cartoonish:option/table target{id:"' + ele + '"} run function cartoonish:option/roll/type/weapon\n')
        
    f.write('\nfunction cartoonish:option/roll/type/get_kind\n')
    f.write('execute if data storage cartoonish:option/table target.tag.options[0] if score @s CAL matches 1.. run scoreboard players set @s TEMP 12\n')
    f.write('execute if data storage cartoonish:option/table target.tag.options[0] unless score @s CAL matches 1.. run scoreboard players set @s TEMP 2\n')