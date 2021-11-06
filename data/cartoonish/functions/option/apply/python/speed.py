uuidform = "636172746f6f6e73706565646f7074"
uuidform = uuidform[:8] + "-" + uuidform[8:12] + "-" + uuidform[12:16] + "-" + uuidform[16:20] + "-" + uuidform[20:]
name = "speed"
attribute = "generic.movement_speed"
max = 6000

with open(".\\data\\cartoonish\\functions\\option\\apply\\type\\"+ name +".mcfunction",'a') as f:
    f.truncate(0)
    f.seek(0)
    f.write('execute unless score @s TEMP matches ..'+str(max)+' run scoreboard players set @s TEMP '+str(max)+'\n')
    f.write('\n')
    i = 1
    cnt = 0
    while (i<<1) < max:
        i <<= 1
        cnt+=1
    while i > 0:
        z = ""
        if i % 1000 < 10:
            z = "00"
        elif i % 1000 < 100:
            z = "0"
        f.write('execute if score @s TEMP matches ' + str(i) + '.. run attribute @s '+ attribute +' modifier add ' + uuidform + hex(cnt)[2:] + ' "ct_option" ' + str(i//1000) + '.' + z + str(i%1000) + ' add\n')
        f.write('execute if score @s TEMP matches ' + str(i) + '.. run scoreboard players remove @s TEMP ' + str(i) + '\n')
        i >>= 1
        cnt-=1

with open(".\\data\\cartoonish\\functions\\option\\apply\\reset\\"+ name +".mcfunction",'a') as f:
    f.truncate(0)
    f.seek(0)
    i = 1
    cnt = 0
    while (i<<1) < max:
        i <<= 1
        cnt+=1
    while i > 0:
        f.write('attribute @s '+ attribute +' modifier remove ' + uuidform + hex(cnt)[2:] + '\n')
        i >>= 1
        cnt-=1