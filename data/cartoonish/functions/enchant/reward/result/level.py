path = ".\\data\\cartoonish\\functions\\enchant\\reward\\result\\level.mcfunction"
with open(path,'a') as f:
    f.truncate(0)
    f.seek(0)
    for i in range(30,-1,-1):
        f.write(f"execute if score @s TEMP matches {2**i}.. run experience add @s -{2**i} levels\n")
        f.write(f"execute if score @s TEMP matches {2**i}.. run scoreboard players remove @s TEMP {2**i}\n")