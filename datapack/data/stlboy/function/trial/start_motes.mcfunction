scoreboard players set @s stlboy.tr 6
scoreboard players set @s stlboy.trt 0
scoreboard players set @s stlboy.trh 0
title @s times 10 70 25
title @s subtitle {"text":"Twenty-six motes of stardust drift loose. Gather twenty-two.","color":"gray"}
title @s title {"text":"Trial IV — The Hunger","color":"light_purple"}
tellraw @s ["",{"text":"Aster  ","color":"gold"},{"text":"“Everything I lost is still out there. Pull it home — the way you pull everything.”","italic":true,"color":"gray"}]
playsound stlboy:cosmic.awaken player @s ~ ~ ~ 0.6 1.6
bossbar set stlboy:trial name {"text":"The Hunger — 0/22","color":"light_purple"}
bossbar set stlboy:trial color purple
bossbar set stlboy:trial style progress
bossbar set stlboy:trial max 1000
bossbar set stlboy:trial value 1000
bossbar set stlboy:trial players @s
scoreboard players set #n stlboy.tmp 26
function stlboy:trial/mote_spawn
bossbar set stlboy:trial max 22
bossbar set stlboy:trial value 0
function stlboy:trial/begin
