# Consequence d'un echec, selon l'epreuve en cours (en tant que le Surfer, avant le nettoyage)
execute if score @s stlboy.tr matches 1 run effect give @s minecraft:slowness 30 1
execute if score @s stlboy.tr matches 1 run title @s subtitle {"translate":"stlboy.trial.cons.1","fallback":"Your light falters: Slowness II for 30 s","color":"gray"}
execute if score @s stlboy.tr matches 2 run effect give @s minecraft:weakness 30 0
execute if score @s stlboy.tr matches 2 run title @s subtitle {"translate":"stlboy.trial.cons.2","fallback":"The sky burns you: Weakness for 30 s","color":"gray"}
execute if score @s stlboy.tr matches 3 run resource set @s stlboy:hunted_timer 160
execute if score @s stlboy.tr matches 3 run title @s subtitle {"translate":"stlboy.trial.cons.3","fallback":"The echoes mark you: Hunted for 8 s","color":"gray"}
execute if score @s stlboy.tr matches 4 run effect give @s minecraft:darkness 20 0
execute if score @s stlboy.tr matches 4 run effect give @s minecraft:slowness 20 0
execute if score @s stlboy.tr matches 4 run title @s subtitle {"translate":"stlboy.trial.cons.4","fallback":"The void lingers: Darkness and Slowness for 20 s","color":"gray"}
execute if score @s stlboy.tr matches 5 run effect give @s minecraft:mining_fatigue 60 1
execute if score @s stlboy.tr matches 5 run title @s subtitle {"translate":"stlboy.trial.cons.5","fallback":"The stars scatter: Mining Fatigue II for 60 s","color":"gray"}
execute if score @s stlboy.tr matches 6 run effect give @s minecraft:hunger 30 2
execute if score @s stlboy.tr matches 6 run title @s subtitle {"translate":"stlboy.trial.cons.6","fallback":"The Hunger feeds on you: Hunger III for 30 s","color":"gray"}
execute if score @s stlboy.tr matches 7 run effect give @s minecraft:weakness 45 1
execute if score @s stlboy.tr matches 7 run title @s subtitle {"translate":"stlboy.trial.cons.7","fallback":"Your reflection keeps your strength: Weakness II for 45 s","color":"gray"}
