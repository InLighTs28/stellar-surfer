# Un sanctuaire s'eveille pour la prochaine epreuve (en tant que le Surfer, 1x/s)
execute unless dimension minecraft:overworld run return 0
execute if score @s stlboy.tr matches 1.. run return 0
execute if entity @e[type=minecraft:item_display,tag=stlboy_shrine,limit=1] run return 0
# Autel dechu (structure du monde) a proximite : il s'eveille en priorite
execute if entity @e[type=minecraft:marker,tag=stlboy_wg_altar,distance=..32,limit=1] run return run function stlboy:shrine/wg
# (les sanctuaires n'apparaissent plus au hasard pres du joueur : seulement dans les Autels dechus, structures du monde)
