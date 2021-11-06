num = [-106] + [i for i in range(4*9)] + [i for i in range(100,104)]
armor = ["feet","legs","chest","head"]
name = ["weapon.offhand"] + ["container."+str(i) for i in range(4*9)] + ["armor."+armor[i] for i in range(4)]
path = ".\\data\\cartoonish\\functions\\death\\loop"

with open(path+"\\main.mcfunction",'a') as main:
    main.truncate(0)
    main.seek(0)
    main.write("""
summon armor_stand ~ ~-1.38 ~ {Tags:["this","ct_death_mark"],ArmorItems:[{},{},{},{id:"minecraft:chest",Count:1b,tag:{Data:[]}}],Invisible:1b,Marker:1b}
data modify entity @e[tag=this,tag=ct_death_mark,type=armor_stand,limit=1] Rotation set from entity @s Rotation

""")
    for i in range(41):
        main.write("""item replace entity @e[type=armor_stand,tag=ct_death_item,tag=this] weapon.mainhand from entity @s """ + name[i] + """
execute as @e[type=armor_stand,tag=ct_death_item,tag=this] if data entity @s HandItems[0].Count unless data entity @s HandItems[0].tag.ct_setup run function cartoonish:death/loop/item
execute unless data entity @e[type=armor_stand,tag=ct_death_item,tag=this,limit=1] HandItems[0].tag.ct_setup run item replace entity @s """ + name[i] + """ with air
""")
    main.write("""
data modify entity @e[tag=this,type=armor_stand,tag=ct_death_mark,limit=1] ArmorItems[3].tag.Owner set from entity @s UUID
execute as @e[tag=this,type=armor_stand,tag=ct_death_mark] unless data entity @s ArmorItems[3].tag.Data[0] run kill @s

tag @s add this
execute if entity @e[tag=this,type=armor_stand,tag=ct_death_mark] as @e[type=armor_stand,tag=ct_death_mark,tag=!this] run function cartoonish:death/loop/remove_last
tag @s remove this

tag @e[tag=this,type=armor_stand,tag=ct_death_mark] remove this
scoreboard players reset @s ct_death
execute as @p[scores={ct_death=1..},gamemode=!creative,gamemode=!spectator] at @s run function cartoonish:death/loop/main""")

