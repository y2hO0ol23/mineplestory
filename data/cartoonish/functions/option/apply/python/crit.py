uuidform = "636172746f6f6e697368637269740a"
uuidform = uuidform[:8] + "-" + uuidform[8:12] + "-" + uuidform[12:16] + "-" + uuidform[16:20] + "-" + uuidform[20:]
name = ["on","off"]
attribute = "generic.attack_damage"

with open(".\\data\\cartoonish\\functions\\option\\apply\\type\\crit\\"+ name[0] +".mcfunction",'a') as f:
    f.truncate(0)
    f.seek(0)
    f.write("""tag @s add ct_is_crit
execute store result score @s TEMP run attribute @s generic.attack_damage get
scoreboard players operation @s TEMP *= @s ct_crit_dmg 
scoreboard players operation @s TEMP /= #1000 TEMP
""")
    f.write('execute unless score @s TEMP matches ..10240 run scoreboard players set @s TEMP 10240\n')
    f.write('\n')
    i = 1
    cnt = 0
    while (i<<1) < 10240:
        i <<= 1
        cnt+=1
    while i > 0:
        f.write('execute if score @s TEMP matches ' + str(i) + '.. run attribute @s '+ attribute +' modifier add ' + uuidform + hex(cnt)[2:] + ' "ct_crit" ' + str(i//10) + '.' + str(i%10) + ' add\n')
        f.write('execute if score @s TEMP matches ' + str(i) + '.. run scoreboard players remove @s TEMP ' + str(i) + '\n')
        i >>= 1
        cnt-=1

with open(".\\data\\cartoonish\\functions\\option\\apply\\type\\crit\\"+ name[1] +".mcfunction",'a') as f:
    f.truncate(0)
    f.seek(0)
    i = 1
    cnt = 0
    while (i<<1) < 10240:
        i <<= 1
        cnt+=1
    f.write("tag @s remove ct_is_crit\n")
    while i > 0:
        f.write('attribute @s '+ attribute +' modifier remove ' + uuidform + hex(cnt)[2:] + '\n')
        i >>= 1
        cnt-=1