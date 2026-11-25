# Poussiere en recompense d'epreuve (macro : n), en tant que le joueur
$resource change @s stlboy:stardust_gain $(n)
$function stlboy:pack/dust {n:$(n)}
$tellraw @s ["",{"text":"✦ ","color":"light_purple"},{"text":"+$(n) Stardust","color":"light_purple"}]
