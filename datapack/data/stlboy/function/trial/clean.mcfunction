scoreboard players set @s stlboy.tr 0
scoreboard players set @s stlboy.trt 0
scoreboard players set @s stlboy.trh 0
bossbar set stlboy:trial players
kill @e[type=minecraft:marker,tag=stlboy_tr]
kill @e[type=minecraft:vex,tag=stlboy_tr_echo]
kill @e[type=minecraft:vex,tag=stlboy_tr_cecho]
kill @e[type=minecraft:item,tag=stlboy_tr_mote]
scoreboard players set @s stlboy.trr 0
kill @e[type=minecraft:fireball,tag=stlboy_tr_fb]
kill @e[type=minecraft:block_display,tag=stlboy_tr_rock]
clear @s minecraft:structure_void[minecraft:custom_data~{stlboy_mote:1b}]
kill @e[type=minecraft:item,tag=stlboy_tr_mote]
