# Poussiere d'un ennemi tue : n = PV max / 10 (1 a 8). Plafond anti-abus : environ 20 par minute (en tant que le joueur)
execute if entity @s[tag=stlboy_sk_siphon] run effect give @s minecraft:regeneration 3 1 true
execute store result score #now stlboy.tmp run time query gametime
scoreboard players operation #el stlboy.tmp = #now stlboy.tmp
scoreboard players operation #el stlboy.tmp -= @s stlboy.kstart
execute if score #el stlboy.tmp matches 1200.. run scoreboard players set @s stlboy.kwin 0
execute if score #el stlboy.tmp matches 1200.. run scoreboard players operation @s stlboy.kstart = #now stlboy.tmp
execute if score @s stlboy.kwin matches 20.. run return run title @s actionbar {"text":"✦ The stars are sated for now ✦","color":"gray"}
$scoreboard players add @s stlboy.kwin $(n)
$resource change @s stlboy:stardust_gain $(n)
$function stlboy:pack/dust {n:$(n)}
execute if entity @s[tag=stlboy_sk_scholar] run resource change @s stlboy:stardust_gain 1
execute if entity @s[tag=stlboy_t_motes] run resource change @s stlboy:stardust_gain 1
$title @s actionbar {"text":"✦ +$(n) Stardust ✦","color":"light_purple"}
