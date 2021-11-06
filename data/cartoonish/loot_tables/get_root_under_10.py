filename = ".\\data\\cartoonish\\loot_tables\\output.txt"
with open(filename, "w+") as file:
    i = 0
    while i <= 100:
        s =  ("""{"function":"set_nbt","tag":"{ct_arrow_speed:%d}","conditions":[{"condition":"entity_scores","entity": "this","scores": {"ct_arrow_speed":{"min": %d,"max":%d}}}]},"""%(i,(i*250)**2,((i+1)*250)**2-1))
        file.write(s+"\n")
        i+=1


