# Distance infinie (en tant que le Surfer, chaque tick) : se declenche seule quand un projectile ennemi ou un monstre au contact approche
execute if score @s stlboy.infcd matches 1.. run scoreboard players remove @s stlboy.infcd 1
execute if score @s stlboy.inf matches 1.. run return run function stlboy:skills/infinity_on
execute if score @s stlboy.infcd matches 1.. run return 0
tag @s add stlboy_inf_self
scoreboard players set #it stlboy.tmp 0
execute as @e[type=#stlboy:void_projectiles,distance=..4] unless function stlboy:skills/infinity_mine run scoreboard players set #it stlboy.tmp 1
execute if entity @e[type=#stlboy:glare,distance=..1.8,limit=1] run scoreboard players set #it stlboy.tmp 1
tag @s remove stlboy_inf_self
execute if score #it stlboy.tmp matches 1 run function stlboy:skills/infinity_start
