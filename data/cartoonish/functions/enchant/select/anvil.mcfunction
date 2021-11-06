summon marker ~ ~ ~ {Tags:["ct_enchant","this"]}
tag @a[distance=..0.5,tag=ct_over_the_anvil] remove ct_over_the_anvil
execute as @p[tag=ct_over_the_anvil] at @s align xyz positioned ~0.5 ~ ~0.5 run function cartoonish:enchant/select/anvil