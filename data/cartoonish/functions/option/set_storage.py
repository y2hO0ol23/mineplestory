path = "./data/cartoonish/functions/option/"
with open(path + 'set_storage.json','r') as rf:
    result = "data merge storage cartoonish:option/table "
    result += rf.read().replace('\n','')
    with open(path + 'set_storage.mcfunction','w') as wf:
        wf.write(result+'\n')
