scoreboard objectives add CAL dummy
scoreboard objectives add CNT dummy
scoreboard objectives add TEMP dummy
scoreboard players set #45 TEMP 45
scoreboard players set #26 TEMP 26
scoreboard players set #20 TEMP 20
scoreboard players set #15 TEMP 15
scoreboard players set #8 TEMP 8
scoreboard players set #7 TEMP 7
scoreboard players set #5 TEMP 5
scoreboard players set #4 TEMP 4
scoreboard players set #3 TEMP 3
scoreboard players set #2 TEMP 2
scoreboard players set #-1 TEMP -1
scoreboard players set #10 TEMP 10
scoreboard players set #100 TEMP 100
scoreboard players set #900 TEMP 900
scoreboard players set #1000 TEMP 1000
scoreboard players set #5000 TEMP 5000
scoreboard players set #10000 TEMP 10000

scoreboard objectives add ct_HP dummy
scoreboard objectives add ct_HP_cmp dummy

function cartoonish:bow/setup
function cartoonish:shield/setup
function cartoonish:crossbow/setup
function cartoonish:sword/setup
function cartoonish:the_end/setup

function cartoonish:option/setup
function cartoonish:area/setup
function cartoonish:monster/setup
function cartoonish:enchant/setup

function cartoonish:death/setup

gamerule maxCommandChainLength 123456789
execute in overworld run forceload add 0 0
execute in the_nether run forceload add 0 0
execute in the_end run forceload add 0 0
