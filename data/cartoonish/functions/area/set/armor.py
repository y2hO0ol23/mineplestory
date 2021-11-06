inp = 242
out = ""
while inp>0:
    out += str(inp%3)
    inp//=3
for i in range(len(out)):
    print(out[-(i+1)],end='')