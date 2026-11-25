# Debut commun d'une epreuve (en tant que le Surfer) : marqueur d'arene, compteur de morts, sanctuaire en cours
scoreboard players set @s stlboy.trd 0
scoreboard players operation #own stlboy.tmp = @s stlboy.sid
summon minecraft:marker ~ ~ ~ {Tags:["stlboy_tr","stlboy_tr_home"]}
execute as @e[tag=stlboy_tr,tag=!stlboy_tr_owned] run function stlboy:trial/own
tag @e[type=minecraft:interaction,tag=stlboy_shrine,distance=..8,sort=nearest,limit=1] add stlboy_shr_active
scoreboard players operation @e[type=minecraft:interaction,tag=stlboy_shr_active,distance=..8] stlboy.own = @s stlboy.sid
