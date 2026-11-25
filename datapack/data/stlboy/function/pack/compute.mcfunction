# Difficulte du modpack (somme des poids des mods durs detectes) -> palier #pt : 0 (0-2), 1 (3-5), 2 (6-9), 3 (10+)
scoreboard players set #pd stlboy.pack 0
scoreboard players operation #pd stlboy.pack += #l2hostility stlboy.pack
scoreboard players operation #pd stlboy.pack += #enhancedai stlboy.pack
scoreboard players operation #pd stlboy.pack += #cataclysm stlboy.pack
scoreboard players operation #pd stlboy.pack += #apotheosis stlboy.pack
scoreboard players operation #pd stlboy.pack += #born_in_chaos_v1 stlboy.pack
scoreboard players operation #pd stlboy.pack += #goety stlboy.pack
scoreboard players operation #pd stlboy.pack += #irons_spellbooks stlboy.pack
scoreboard players operation #pd stlboy.pack += #hazennstuff stlboy.pack
scoreboard players operation #pd stlboy.pack += #mowziesmobs stlboy.pack
scoreboard players operation #pd stlboy.pack += #brutalbosses stlboy.pack
scoreboard players operation #pd stlboy.pack += #block_factorys_bosses stlboy.pack
scoreboard players operation #pd stlboy.pack += #irons_apothic_invaders stlboy.pack
scoreboard players operation #pd stlboy.pack += #alexsmobs stlboy.pack
scoreboard players operation #pd stlboy.pack += #bosses_of_mass_destruction stlboy.pack
scoreboard players operation #pd stlboy.pack += #twilightforest stlboy.pack
scoreboard players operation #ptold stlboy.pack = #pt stlboy.pack
scoreboard players set #pt stlboy.pack 0
execute if score #pd stlboy.pack matches 3..5 run scoreboard players set #pt stlboy.pack 1
execute if score #pd stlboy.pack matches 6..9 run scoreboard players set #pt stlboy.pack 2
execute if score #pd stlboy.pack matches 10.. run scoreboard players set #pt stlboy.pack 3
execute unless score #pt stlboy.pack = #ptold stlboy.pack if score #pt stlboy.pack matches 1.. run tellraw @a[tag=stlboy_surfer] [{"text":"✦ ","color":"light_purple"},{"translate":"stlboy.pack.tier","fallback":"A harsher sky (difficulty tier %s): more Stardust, stronger cosmic power, more health.","color":"gray","with":[{"score":{"name":"#pt","objective":"stlboy.pack"},"color":"white"}]}]
