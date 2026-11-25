execute unless dimension minecraft:overworld run return run function stlboy:trial/fail
# mort pendant l'epreuve, ou trop loin de l'arene : l'epreuve est ratee (on ne peut plus la valider de loin)
execute if score @s stlboy.trd matches 1.. run return run function stlboy:trial/fail
scoreboard players operation #own stlboy.tmp = @s stlboy.sid
execute as @e[tag=stlboy_tr,tag=!stlboy_tr_owned] run function stlboy:trial/own
execute if score @s stlboy.trt matches 5.. unless entity @e[type=minecraft:marker,tag=stlboy_tr_home,predicate=stlboy:owned,distance=..72,limit=1] run return run function stlboy:trial/fail
scoreboard players add @s stlboy.trt 1
execute if score @s stlboy.tr matches 1 run function stlboy:trial/run_ring
execute if score @s stlboy.tr matches 2 run function stlboy:trial/run_meteor
execute if score @s stlboy.tr matches 3 run function stlboy:trial/run_echo
execute if score @s stlboy.tr matches 4 run function stlboy:trial/run_horizon
execute if score @s stlboy.tr matches 5 run function stlboy:trial/run_const
execute if score @s stlboy.tr matches 6 run function stlboy:trial/run_motes
execute if score @s stlboy.tr matches 7 run function stlboy:trial/run_mirror
