scoreboard players set @s stlboy.tr 1
scoreboard players set @s stlboy.trt 0
scoreboard players set @s stlboy.trh 0
title @s times 10 70 25
title @s subtitle {"text":"Thread the old orbit of Aster before it fades.","color":"gray"}
title @s title {"text":"Trial I — The Ring Run","color":"aqua"}
tellraw @s ["",{"text":"Aster  ","color":"gold"},{"text":"“Run through my old orbit. Ten rings. Do not let them go dark.”","italic":true,"color":"gray"}]
playsound stlboy:cosmic.awaken player @s ~ ~ ~ 0.6 1.6
bossbar set stlboy:trial name {"text":"Ring Run — 0/10","color":"aqua"}
bossbar set stlboy:trial color blue
bossbar set stlboy:trial style progress
bossbar set stlboy:trial max 800
bossbar set stlboy:trial value 800
bossbar set stlboy:trial players @s
execute rotated ~ 0 positioned ^0 ^4 ^12 run function stlboy:trial/ring_put
execute rotated ~ 0 positioned ^8 ^9 ^22 run function stlboy:trial/ring_put
execute rotated ~ 0 positioned ^-9 ^14 ^32 run function stlboy:trial/ring_put
execute rotated ~ 0 positioned ^0 ^20 ^42 run function stlboy:trial/ring_put
execute rotated ~ 0 positioned ^10 ^26 ^52 run function stlboy:trial/ring_put
execute rotated ~ 0 positioned ^-10 ^30 ^62 run function stlboy:trial/ring_put
execute rotated ~ 0 positioned ^6 ^36 ^72 run function stlboy:trial/ring_put
execute rotated ~ 0 positioned ^-6 ^40 ^82 run function stlboy:trial/ring_put
execute rotated ~ 0 positioned ^0 ^44 ^92 run function stlboy:trial/ring_put
execute rotated ~ 0 positioned ^0 ^48 ^104 run function stlboy:trial/ring_put
function stlboy:trial/begin
