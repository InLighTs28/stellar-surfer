# Frappe d'orbe (en tant que le joueur, au clic d'attaque) : la premiere orbe sur la ligne de visee (4 blocs)
# part dans la direction de la frappe avec l'inertie des orbes relachees (ralentit de 10 % par tick, s'arrete aux blocs).
# vecteur de visee (centiemes de bloc par tick = 1 bloc/tick, pas plus pour ne pas traverser un mur fin) : position d'un marqueur 1 bloc devant - position du joueur
execute store result score #px stlboy.tmp run data get entity @s Pos[0] 100
execute store result score #py stlboy.tmp run data get entity @s Pos[1] 100
execute store result score #pz stlboy.tmp run data get entity @s Pos[2] 100
execute rotated as @s positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["stlboy_lv"]}
execute store result score #lx stlboy.tmp run data get entity @e[type=marker,tag=stlboy_lv,limit=1] Pos[0] 100
execute store result score #ly stlboy.tmp run data get entity @e[type=marker,tag=stlboy_lv,limit=1] Pos[1] 100
execute store result score #lz stlboy.tmp run data get entity @e[type=marker,tag=stlboy_lv,limit=1] Pos[2] 100
kill @e[type=marker,tag=stlboy_lv]
scoreboard players operation #lx stlboy.tmp -= #px stlboy.tmp
scoreboard players operation #ly stlboy.tmp -= #py stlboy.tmp
scoreboard players operation #lz stlboy.tmp -= #pz stlboy.tmp
scoreboard players set #st stlboy.tmp 0
execute anchored eyes positioned ^ ^ ^ run function stlboy:orb/strike_ray
