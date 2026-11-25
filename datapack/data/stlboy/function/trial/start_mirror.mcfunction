scoreboard players set @s stlboy.tr 7
scoreboard players set @s stlboy.trt 0
scoreboard players set @s stlboy.trh 0
scoreboard players set @s stlboy.trr 0
title @s times 10 80 25
title @s subtitle {"text":"Strike the falling fire back, or let your White Hole shatter it. Two hits and the memory breaks.","color":"gray"}
title @s title {"text":"Trial VII — The Mirror","color":"aqua"}
tellraw @s ["",{"text":"Aster  ","color":"gold"},{"text":"“Light that is thrown at you is only light waiting to be returned. Do not flinch. Answer.”","italic":true,"color":"gray"}]
playsound stlboy:cosmic.awaken player @s ~ ~ ~ 0.6 1.6
bossbar set stlboy:trial name {"text":"The Mirror — 0/10 returned · 0/2 hits","color":"aqua"}
bossbar set stlboy:trial color blue
bossbar set stlboy:trial style notched_10
bossbar set stlboy:trial max 10
bossbar set stlboy:trial value 0
bossbar set stlboy:trial players @s
function stlboy:trial/begin
