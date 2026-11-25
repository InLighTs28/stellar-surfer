scoreboard players set @s stlboy.tr 5
scoreboard players set @s stlboy.trt 0
scoreboard players set @s stlboy.trh 0
title @s times 10 70 25
title @s subtitle {"text":"Five starbound echoes. Only a Constellation can break them.","color":"gray"}
title @s title {"text":"Trial III — Constellations","color":"yellow"}
tellraw @s ["",{"text":"Aster  ","color":"gold"},{"text":"“They cannot be struck like mortals. Trace four stars on each — and let the pattern finish them.”","italic":true,"color":"gray"}]
playsound stlboy:cosmic.awaken player @s ~ ~ ~ 0.6 1.6
bossbar set stlboy:trial name {"text":"Constellations — 5 echoes","color":"yellow"}
bossbar set stlboy:trial color yellow
bossbar set stlboy:trial style progress
bossbar set stlboy:trial max 1300
bossbar set stlboy:trial value 1300
bossbar set stlboy:trial players @s
execute at @s run summon minecraft:vex ~8 ~3 ~0 {Tags:["stlboy_tr","stlboy_tr_cecho"],CustomName:'{"text":"Starbound Echo","color":"yellow"}',Glowing:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.max_health",base:400d}],Health:400f}
execute at @s run summon minecraft:vex ~-8 ~3 ~0 {Tags:["stlboy_tr","stlboy_tr_cecho"],CustomName:'{"text":"Starbound Echo","color":"yellow"}',Glowing:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.max_health",base:400d}],Health:400f}
execute at @s run summon minecraft:vex ~0 ~3 ~8 {Tags:["stlboy_tr","stlboy_tr_cecho"],CustomName:'{"text":"Starbound Echo","color":"yellow"}',Glowing:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.max_health",base:400d}],Health:400f}
execute at @s run summon minecraft:vex ~0 ~3 ~-8 {Tags:["stlboy_tr","stlboy_tr_cecho"],CustomName:'{"text":"Starbound Echo","color":"yellow"}',Glowing:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.max_health",base:400d}],Health:400f}
execute at @s run summon minecraft:vex ~7 ~6 ~-7 {Tags:["stlboy_tr","stlboy_tr_cecho"],CustomName:'{"text":"Starbound Echo","color":"yellow"}',Glowing:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.max_health",base:400d}],Health:400f}
bossbar set stlboy:trial max 5
bossbar set stlboy:trial value 5
function stlboy:trial/begin
