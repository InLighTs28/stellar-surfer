# Entite d'epreuve dont le Surfer n'a plus d'epreuve en cours (mort, deconnexion, chunk recharge plus tard) : elle disparait
scoreboard players operation #own stlboy.tmp = @s stlboy.own
execute unless entity @a[predicate=stlboy:owner,scores={stlboy.tr=1..},limit=1] run kill @s
