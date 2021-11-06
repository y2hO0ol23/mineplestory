filename = ".\\data\\cartoonish\\loot_tables\\output.txt"
with open(filename, "w+") as file:
    i = 0
    while i <= 30:
        s =  ("""{"function":"set_nbt","tag":"{ct_result:%d}","conditions":[{"condition":"entity_scores","entity": "this","scores": {"TEMP":%d}}]},"""%(2**i,i))
        file.write(s+"\n")
        i+=1


