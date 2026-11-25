# Objectifs et nettoyage de l'origine
scoreboard objectives add stlboy.y dummy
scoreboard objectives add stlboy.py dummy
scoreboard objectives add stlboy.vy dummy
scoreboard objectives add stlboy.fall dummy
scoreboard objectives add stlboy.throw dummy
scoreboard objectives add stlboy.juggle dummy
scoreboard objectives add stlboy.tick dummy
scoreboard objectives add stlboy.tmp dummy
scoreboard objectives add stlboy.const dummy
scoreboard objectives add stlboy.life dummy
scoreboard objectives add stlboy.ox dummy
scoreboard objectives add stlboy.oy dummy
scoreboard objectives add stlboy.oz dummy
scoreboard objectives add stlboy.dx dummy
scoreboard objectives add stlboy.dy dummy
scoreboard objectives add stlboy.dz dummy
scoreboard players set #9 stlboy.const 9
scoreboard players set #10 stlboy.const 10
scoreboard players set #20 stlboy.const 20
scoreboard players set #4 stlboy.const 4
scoreboard players set #cm1 stlboy.const -1
scoreboard players set #5 stlboy.const 5
scoreboard players set #100 stlboy.const 100
scoreboard objectives add stlboy.sntot dummy
scoreboard players set #12 stlboy.const 12
scoreboard objectives add stlboy.lvl dummy
scoreboard objectives add stlboy.slot dummy
scoreboard objectives add stlboy.pt dummy
scoreboard objectives add stlboy.wd dummy
scoreboard objectives add stlboy.nd dummy
tag @e[tag=stlboy_grip] remove stlboy_grip
kill @e[type=marker,tag=stlboy_well]
kill @e[type=marker,tag=stlboy_aim_well]
kill @e[type=marker,tag=stlboy_aim_nova]
execute as @e[tag=stlboy_frozen] run function stlboy:orb/unfreeze
kill @e[type=marker,tag=stlboy_sn]
kill @e[type=marker,tag=stlboy_anc]
scoreboard players set #c2 stlboy.const 2
scoreboard players set #c20 stlboy.const 20
execute as @e[tag=stlboy_sn_in] run function stlboy:orb/sn_leave
scoreboard objectives add stlboy.stars dummy
scoreboard objectives add stlboy.cid dummy
scoreboard objectives add stlboy.kstart dummy
scoreboard objectives add stlboy.kwin dummy
scoreboard objectives add stlboy.rk dummy
scoreboard objectives add stlboy.chain dummy
scoreboard objectives add stlboy.fly dummy
scoreboard objectives add stlboy.bstars dummy
tag @e[tag=stlboy_bt] remove stlboy_bt
scoreboard players set #25 stlboy.const 25
scoreboard players set #180 stlboy.const 180
kill @e[tag=stlboy_beam]
kill @e[tag=stlboy_cst]
kill @e[type=minecraft:marker,tag=stlboy_dir]
function stlboy:breath/shapes_init
scoreboard players set #200 stlboy.const 200
scoreboard players set #-1 stlboy.const -1
scoreboard players set #40 stlboy.const 40
kill @e[tag=stlboy_vis]
scoreboard objectives add stlboy.cad dummy
scoreboard objectives add stlboy.dl dummy
scoreboard objectives add stlboy.res dummy
scoreboard objectives add stlboy.rayd dummy
scoreboard objectives add stlboy.rayt dummy
scoreboard players set #rayv stlboy.const 1
scoreboard objectives add stlboy.deaths deathCount
scoreboard objectives add stlboy.trr dummy
# HUD Sigil : menu de reglages (/trigger stlboy.hud) et grains de lumiere
scoreboard objectives add stlboy.hud trigger
kill @e[type=minecraft:item_display,tag=stlboy_mote]
kill @e[type=minecraft:item_display,tag=stlboy_shard]
function stlboy:ofx/init
kill @e[type=minecraft:item_display,tag=stlboy_ofx]

# --- Multi-Surfer (jusqu'a 5) ---
scoreboard objectives add stlboy.sid dummy
scoreboard objectives add stlboy.pal dummy
scoreboard objectives add stlboy.cwait dummy
scoreboard objectives add stlboy.bage dummy
scoreboard objectives add stlboy.clast dummy
scoreboard objectives add stlboy.gate dummy
scoreboard objectives add stlboy.whday dummy
scoreboard objectives add stlboy.mgo dummy
scoreboard objectives add stlboy.mgc dummy
scoreboard objectives add stlboy.mgt dummy
scoreboard objectives add stlboy.sfl dummy
scoreboard objectives add stlboy.sfo dummy
scoreboard objectives add stlboy.sfh dummy
scoreboard objectives add stlboy.fid dummy
scoreboard objectives add stlboy.fpl dummy
scoreboard objectives add stlboy.sfw dummy
scoreboard objectives add stlboy.palx dummy
scoreboard objectives add stlboy.own dummy
scoreboard objectives add stlboy.oid dummy
scoreboard objectives add stlboy.cown dummy
scoreboard objectives add stlboy.bl dummy
scoreboard objectives add stlboy.rr dummy
scoreboard players set #taxp stlboy.const 0
scoreboard objectives add stlboy.fl dummy
scoreboard objectives add stlboy.fv dummy
scoreboard objectives add stlboy.wj dummy
kill @e[type=minecraft:marker,tag=stlboy_sn_exit]
scoreboard objectives add stlboy.mid dummy
kill @e[type=minecraft:block_display,tag=stlboy_tr_rock]
scoreboard objectives add stlboy.shc dummy
scoreboard objectives add stlboy.bha dummy
# Ancienne Voie stellaire en hologramme (retiree) : nettoyage des restes
kill @e[tag=stlboy_tree]
tag @a remove stlboy_tree_open
# chance de Traque par coup (en %)
scoreboard objectives add stlboy.hch dummy
scoreboard players set @a stlboy.hch 100
# Difficulte du modpack : remise a zero, puis chaque mod dur detecte (progres conditionnes par NeoForge) se signale
scoreboard objectives add stlboy.pack dummy
scoreboard players set #l2hostility stlboy.pack 0
scoreboard players set #enhancedai stlboy.pack 0
scoreboard players set #cataclysm stlboy.pack 0
scoreboard players set #apotheosis stlboy.pack 0
scoreboard players set #born_in_chaos_v1 stlboy.pack 0
scoreboard players set #goety stlboy.pack 0
scoreboard players set #irons_spellbooks stlboy.pack 0
scoreboard players set #hazennstuff stlboy.pack 0
scoreboard players set #mowziesmobs stlboy.pack 0
scoreboard players set #brutalbosses stlboy.pack 0
scoreboard players set #block_factorys_bosses stlboy.pack 0
scoreboard players set #irons_apothic_invaders stlboy.pack 0
scoreboard players set #alexsmobs stlboy.pack 0
scoreboard players set #bosses_of_mass_destruction stlboy.pack 0
scoreboard players set #twilightforest stlboy.pack 0
function stlboy:pack/compute
advancement revoke @a from stlboy:pack/root
# Distance infinie
scoreboard objectives add stlboy.inf dummy
scoreboard objectives add stlboy.infcd dummy
