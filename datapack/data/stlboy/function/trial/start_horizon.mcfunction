scoreboard players set @s stlboy.tr 4
scoreboard players set @s stlboy.trt 0
scoreboard players set @s stlboy.trh 0
title @s times 10 70 25
title @s subtitle {"text":"A hunger without a name. Stay out of its reach for 40 seconds.","color":"gray"}
title @s title {"text":"Trial IV — Event Horizon","color":"dark_purple"}
tellraw @s ["",{"text":"Aster  ","color":"gold"},{"text":"“This is how I ended: pulled inward, until even my light was a prisoner. Do not let it close.”","italic":true,"color":"gray"}]
playsound stlboy:cosmic.awaken player @s ~ ~ ~ 0.6 1.6
bossbar set stlboy:trial name {"text":"Event Horizon — stay free","color":"dark_purple"}
bossbar set stlboy:trial color purple
bossbar set stlboy:trial style progress
bossbar set stlboy:trial max 800
bossbar set stlboy:trial value 800
bossbar set stlboy:trial players @s
execute rotated ~ 0 positioned ^ ^2 ^12 run summon minecraft:marker ~ ~ ~ {Tags:["stlboy_tr","stlboy_tr_bh"]}
function stlboy:trial/begin
