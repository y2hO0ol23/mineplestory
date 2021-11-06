uuidform = "6361746f6f6e61747461636b6f7074"
uuidform = uuidform[:8] + "-" + uuidform[8:12] + "-" + uuidform[12:16] + "-" + uuidform[16:20] + "-" + uuidform[20:]
name = "attack"
attribute = "generic.attack_damage"

with open(".\\data\\cartoonish\\functions\\option\\apply\\type\\"+ name +".mcfunction",'a') as f:
    f.truncate(0)
    f.seek(0)
    f.write('execute unless score @s TEMP matches ..10240 run scoreboard players set @s TEMP 10240\n')
    f.write('\n')
    i = 1
    cnt = 0
    while (i<<1) < 10240:
        i <<= 1
        cnt+=1
    while i > 0:
        f.write('execute if score @s TEMP matches ' + str(i) + '.. run attribute @s '+ attribute +' modifier add ' + uuidform + hex(cnt)[2:] + ' "ct_option" ' + str(i//10) + '.' + str(i%10) + ' add\n')
        f.write('execute if score @s TEMP matches ' + str(i) + '.. run scoreboard players remove @s TEMP ' + str(i) + '\n')
        i >>= 1
        cnt-=1

with open(".\\data\\cartoonish\\functions\\option\\apply\\reset\\"+ name +".mcfunction",'a') as f:
    f.truncate(0)
    f.seek(0)
    i = 1
    cnt = 0
    while (i<<1) < 10240:
        i <<= 1
        cnt+=1
    while i > 0:
        f.write('attribute @s '+ attribute +' modifier remove ' + uuidform + hex(cnt)[2:] + '\n')
        i >>= 1
        cnt-=1