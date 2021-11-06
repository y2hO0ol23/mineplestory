data remove storage cartoonish:enchant enchantTarget[0].cnt
data modify storage cartoonish:enchant enchantResult append from storage cartoonish:enchant enchantTarget[0]
data remove storage cartoonish:enchant enchantTarget[0]

execute if data storage cartoonish:enchant enchantTarget[0] run function cartoonish:enchant/calculate/result/loop