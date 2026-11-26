# L'orbe frappee part dans la direction de la frappe (en tant que l'orbe). Elle est relachee meme si on la pilotait :
# elle derive alors comme une orbe relachee (1 bloc/tick au depart, environ 10 blocs) puis s'arrete.
scoreboard players operation @s stlboy.dx = #lx stlboy.tmp
scoreboard players operation @s stlboy.dy = #ly stlboy.tmp
scoreboard players operation @s stlboy.dz = #lz stlboy.tmp
tag @s add stlboy_free
execute if score @s stlboy.life matches ..60 run scoreboard players set @s stlboy.life 60
execute if entity @s[tag=stlboy_orb_well] run playsound stlboy:cosmic.off player @a ~ ~ ~ 0.8 0.6
execute if entity @s[tag=stlboy_orb_nova] run playsound stlboy:cosmic.off player @a ~ ~ ~ 0.8 1.6
particle apoli:custom{texture:"stlboy:textures/particle/twinkle.png",lifetime:12,lifetime_variation:4,size:0.4f,size_variation:0.1f,end_size:0.0f,color:"#FFF4E8FF",end_color:"#9FE8FF00",friction:0.85f,gravity:0.0f,physics:false,emissive:true,blend:"translucent",easing:"ease_out_quad",roll:"rUni(0, 360)",roll_speed:"rNor(0, 6)"} ~ ~0.5 ~ 0.3 0.3 0.3 0.2 12 force
