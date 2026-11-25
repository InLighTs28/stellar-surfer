# Fin de la Distance infinie (en tant que le Surfer) : les projectiles retenus retombent
execute as @e[tag=stlboy_inf_held,distance=..8] run data merge entity @s {NoGravity:0b}
tag @e[tag=stlboy_inf_held,distance=..8] remove stlboy_inf_held
playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 0.6 1.6
