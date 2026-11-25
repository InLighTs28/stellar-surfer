# Bonus de Poussiere selon la difficulte du modpack (macro n, en tant que le joueur) : +20 % par palier
$scoreboard players set #pb stlboy.tmp $(n)
scoreboard players operation #pb stlboy.tmp *= #pt stlboy.pack
scoreboard players set #c5p stlboy.tmp 5
scoreboard players operation #pb stlboy.tmp /= #c5p stlboy.tmp
execute if score #pb stlboy.tmp matches 0 if score #pt stlboy.pack matches 1.. if predicate stlboy:chance_half run scoreboard players set #pb stlboy.tmp 1
execute if score #pb stlboy.tmp matches 1.. store result storage stlboy:tmp pb.n int 1 run scoreboard players get #pb stlboy.tmp
execute if score #pb stlboy.tmp matches 1.. run function stlboy:pack/dust_m with storage stlboy:tmp pb
