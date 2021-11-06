execute if score @s ct_mst_hp <= @s ct_mst_mxhp as @e[team=wither] run data modify entity @s ActiveEffects append value {Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:2,Id:11,Amplifier:5}
execute if score @s ct_mst_hp <= @s ct_mst_mxhp run summon creeper ~ ~ ~ {ExplosionRadius:2b,Fuse:0}

execute store result score @s ct_mst_hp run data get entity @s Health 100