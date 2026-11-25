scoreboard players set @s stlboy.tr 3
scoreboard players set @s stlboy.trt 0
scoreboard players set @s stlboy.trh 0
title @s times 10 70 25
title @s subtitle {"text":"Six echoes of Aster hunt you. Silence them all.","color":"gray"}
title @s title {"text":"Trial III — Echo Siege","color":"light_purple"}
tellraw @s ["",{"text":"Aster  ","color":"gold"},{"text":"“They are what I left behind: the screams, the shards. Give them rest.”","italic":true,"color":"gray"}]
playsound stlboy:cosmic.awaken player @s ~ ~ ~ 0.6 1.6
bossbar set stlboy:trial name {"text":"Echo Siege — 6 echoes","color":"light_purple"}
bossbar set stlboy:trial color purple
bossbar set stlboy:trial style progress
bossbar set stlboy:trial max 1500
bossbar set stlboy:trial value 1500
bossbar set stlboy:trial players @s
execute at @s run summon minecraft:vex ~8 ~3 ~0 {Tags:["stlboy_tr","stlboy_tr_echo"],CustomName:'{"text":"Echo of Aster","color":"aqua"}',Glowing:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute at @s run summon minecraft:vex ~-8 ~3 ~0 {Tags:["stlboy_tr","stlboy_tr_echo"],CustomName:'{"text":"Echo of Aster","color":"aqua"}',Glowing:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute at @s run summon minecraft:vex ~0 ~3 ~8 {Tags:["stlboy_tr","stlboy_tr_echo"],CustomName:'{"text":"Echo of Aster","color":"aqua"}',Glowing:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute at @s run summon minecraft:vex ~0 ~3 ~-8 {Tags:["stlboy_tr","stlboy_tr_echo"],CustomName:'{"text":"Echo of Aster","color":"aqua"}',Glowing:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute at @s run summon minecraft:vex ~6 ~6 ~6 {Tags:["stlboy_tr","stlboy_tr_echo"],CustomName:'{"text":"Echo of Aster","color":"aqua"}',Glowing:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute at @s run summon minecraft:vex ~-6 ~6 ~-6 {Tags:["stlboy_tr","stlboy_tr_echo"],CustomName:'{"text":"Echo of Aster","color":"aqua"}',Glowing:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
bossbar set stlboy:trial max 6
bossbar set stlboy:trial value 6
function stlboy:trial/begin
