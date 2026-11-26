# Rayon de frappe, pas de 0,5 bloc jusqu'a 4 blocs (en tant que le joueur). S'arrete a la premiere orbe ou au premier bloc.
scoreboard players add #st stlboy.tmp 1
execute if score #st stlboy.tmp matches 10.. run return 0
execute unless block ~ ~ ~ #stlboy:orb_passable run return 0
execute as @e[tag=stlboy_orb,tag=!stlboy_dying,distance=..1.2,sort=nearest,limit=1] at @s run return run function stlboy:orb/strike_hit
execute positioned ^ ^ ^0.5 run function stlboy:orb/strike_ray
