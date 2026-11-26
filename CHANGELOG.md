# Changelog

All notable changes to **Stellar Surfer** (datapack) and **Stellar Surfer — Cosmic Visuals** (resource pack).
Both packs share the same version number and must be used together.

Format: one section per version, newest first. `DP` = datapack, `RP` = resource pack.

---

## [1.2.1] — 2026-11-26

### Origins window theme
- **DP + RP** The Stellar Surfer origin sets **custom_gui** (Origins 1.53+): its choose and view screens use the Stellar Surfer theme (starry background, cosmic border, name plate, scroll bar and star impact dots from `stlboy:textures/gui/origin/`), only while this origin is shown. The datapack + resource pack version now gets the same window as the mod.
- **DP + RP** The impact tooltip reads **Magnitude** (`impact_name`, EN/FR).
- **DP** Origins 1.52 and older ignore the field: the window keeps its default look there.
- **Mod** The Java skin of the window steps aside on Origins 1.53+ (the theme comes from the datapack) and still applies on 1.52. Built against Origins 1.53 and Apoli 1.139.

---

## [1.2.0] — 2026-11-25

### Trials, rebuilt
- **DP** A trial **fails if you die** or leave the arena (72 blocks): it can no longer be completed from far away (dying while echoes were unloaded used to validate the Echo Siege).
- **DP** Trial creatures (echoes, meteors, motes...) disappear as soon as their trial ends, even if they were in unloaded chunks (no more leftover vexes).
- **DP** **3 attempts per shrine**; after the third failure the shrine crumbles and the memory waits for another shrine. A completed trial is consumed (its shrine falls into ruin).
- **DP + RP** Each trial has **its own consequence** on failure (Slowness, Weakness, Hunted, Darkness, Mining Fatigue, Hunger...). The "Press [B] to try again" message is gone.
- **DP** Shrines only appear in **Fallen Altars**, world structures (more frequent), never randomly next to the player.
- **DP** The Hunger: the motes are now star motes (not edible, no value), counted from your inventory and removed when the trial ends: no more amethyst duplication.

### The Surfer
- **DP + RP** New base power **Cosmic Body**: immune to **fire, lava, freezing and poison**, and **breathes underwater** (proper water breathing; the old trick could break the Figura marker).
- **DP + RP** Sun passive *Solar Heart* is now **Solar Flares burn 1 s longer** (fire immunity is now for every Surfer).
- **DP + RP** **Hunted** no longer triggers on every hit: **100 % chance at Rank 0, -8.5 % per Rank, never below 15 %**.
- **DP + RP** **Stellar Breath charges faster** at every Rank: 2.25 s → 1.65 s (Rank 3) → 1.3 s (Rank 6) → 0.9 s (Rank 9).
- **DP + RP** **Free float gets faster with Rank**: +25 % (Rank 3), +45 % (Rank 6), +60 % (Rank 9), not while Hunted.
- **DP + RP** New legendary Neptune skill **Infinite Distance** (Rank 8, 5 pts): when an enemy projectile or a monster gets close, space folds for 4 s: projectiles stop in mid-air, monsters crawl, -40 % damage taken (35 s recharge, costs a little hunger). The Stellar Path layout makes room for it.

### Modpack compatibility
- **DP** **Harder modpacks, stronger Surfer**: L2 Hostility, Enhanced AI, Cataclysm, Apotheosis, Born in Chaos, Goety, Iron's Spells, Hazen n Stuff, Mowzie's Mobs, Brutal Bosses... are detected (NeoForge conditions) and raise a difficulty tier: per tier +20 % Stardust, +10 % cosmic damage, +2 max health.
- **DP** **Enhanced AI**: cosmic damage (Star Shards, Breath, orbs) no longer counts as a bare-hand hit, so zombies stop "biting back" from 20 blocks away.

### Origin page
- **RP** New animated title banner **THE SHOOTING STAR** (twinkling stars, shooting star), then the fact sheet with a new *Immune* line.

### Figura avatar
- Curios accessories, Essential cosmetics and armour layers follow the animated pose; Iron's Spells cast pose; charge timing matches the faster Breath; no more debug messages in chat.

---

## [1.1.11] — 2026-11-21

### Origins window
- **RP** The resource pack no longer reskins the Origins window: the 1.1.9 global reskin replaced the window of every origin and of other packs. Only the NeoForge version keeps its Stellar Surfer skin, on the Stellar Surfer page only.
- **DP + RP** A real banner again at the top of the origin description, in the style of the CurseForge banner (starry nebula, pixel-art STELLAR SURFER title), followed by a short fact sheet: role, powers, path, weakness. The banner is cut into line strips, so it scrolls cleanly.

---

## [1.1.10] — 2026-11-21

### Aurora
- **DP** Ghost Step (and any invisibility) now hides every class particle: aura and surf trail no longer give the Surfer away.
- **DP** Richer Aurora aura: the veils slowly shift colour (green → teal → violet), ripple upward, sparkles fall from their tops and a soft halo pulses at your feet.

### Figura support
- **DP** The surf signal for the avatar refreshes twice as fast, so the avatar plays exactly one take-off and one landing animation.

### Figura avatar
- Cosmic skin fixed (Figura gives no access to the player's skin pixels): your skin with your class galaxy glowing over it, tinted second layer; no more error in chat.
- One surf-in / surf-out per take-off and landing; braking only on a real slowdown (no more brake while boosting).
- New: 6 stylish surf tricks (flat 360, front flip, grab, superman, cork, scissor kick) with a spinning star, every 7 to 13 s of steady surf.
- No sparks while invisible (Ghost Step).

---

## [1.1.9] — 2026-11-21

### Gameplay
- **DP** Elytra can no longer be used (a Surfer already flies). A short message explains why.
- **DP + RP** **Solar Flare** now lasts **3 s** by default (4 s with the advanced skill), shortened by Fire Protection (-15 % per level, up to -80 %) and by fire magic resistance (Iron's Spells). It looks like vanilla fire: a sheet of animated solar flames covering the whole target and facing the camera, instead of flames at the feet.

### Visuals
- **DP** Constellation: no more lines between the stars; the four stars now orbit around the target.
- **DP** Far fewer sparkles in the Stellar Breath beam (the helix is about 10 times lighter and starts 3 blocks ahead), for a clear view.

### Origins window (resource pack)
- **RP** Stellar Surfer skin for the Origins window in the resource pack version too (only the 10 textures of the *default* Origins theme are replaced; any pack placed above it keeps priority). The NeoForge version keeps skinning only the Stellar Surfer page.
- **DP + RP** The banner at the top of the origin description is replaced by a concrete summary: surfing, abilities, classes and weaknesses.

### Removed
- The *Stellar Surfer Visuals* add-on (1.1.8) is discontinued.

### Figura avatar
- The player's cape follows the animated model; crouching in the air no longer squashes the body; no extra animation when the surf starts or ends; idle poses only after 1 minute AFK; brighter cosmic skin; with shaders the model no longer turns into a translucent veil.

---

## [1.1.8] — 2026-11-21

### Cosmic Strength
- **DP + RP** Dragon's Breath no longer gives vanilla Strength (useless to a Surfer): it gives **Cosmic Strength**, a new effect. Cosmic damage +30 %, and the effects of cosmic abilities (shard slowness, orb stun, Constellation bind) are one level stronger and last 50 % longer.

### Stellar Path
- **DP** The holographic star map (key K) is removed.
- **New: Stellar Surfer Visuals**, a small client add-on for the datapack version: the exact constellation skill tree of the NeoForge version, the Stellar Surfer skin of the Origins window and the glowing orbs, with the datapack + resource pack. Do not install it with the all-in-one mod.

### Modrinth
- Descriptions link to the CurseForge pages of the datapack, resource pack and mod.

### Figura avatar
- Shader compatibility (Iris / Oculus): glowing parts switch to a shader-friendly render while a shader pack is on. Every avatar change is now published as its own release in the private repo.

---

## [1.1.7] — 2026-11-21

### Stellar Path in the datapack version
- **DP + RP** New holographic Stellar Path (key **K**): the same five-pointed constellation as the mod's screen appears in front of you, coloured by class. Left-click a star for its details, right-click to unlock it (same rules and points as Apoli). Closes with K, after 2 minutes or when you walk away.

### Constellation
- **DP** The Constellation now forms as a crown above the target's head instead of a square at mid-height: it no longer sinks into the ground on slopes, and every line stays attached to its stars.

### Class particles
- **DP + RP** New option in `/trigger stlboy.hud`: *My class particles*. Hides your own aura and trail for you only (better first-person view); other players still see them.
- **DP** Smaller Nebula clouds.

### Shrines
- **DP** Each trial shrine has its own architecture: circular colonnade (Ring Run), scorched crater (Meteors), five-pointed star with obelisks (Constellation), basin with floating islets (Star Motes), open amethyst geode (Echo), symmetric glass gallery (Mirror), standing obsidian ring (Horizon).
- **DP** In creative mode a shrine starts its trial right away (no rank, skill or open-sky requirement) for testing.

### Descriptions
- **RP** Pictures in the origin and Celestial Sigil descriptions are cut into line-high strips: they scroll and clip like text instead of spilling out of the window.

### NeoForge version
- **Mod** The skill screen fades in smoothly. Smaller, dimmer glow on orb cores so the Wormhole's spinning rings stay visible.

### Figura avatar
- One single surf-in / surf-out animation per take-off and landing; braking tilts the board backward; the cosmic skin now follows the exact shape of the skin (both layers); orb cast pose only when an orb is really out (not on cooldown).

---

## [1.1.6] — 2026-11-21

### Orbs
- **DP** Black Hole and White Hole no longer move passive creatures (farm animals, villagers, golems, pets, fish, armor stands...): they are neither pulled, pushed nor hit by the White Hole's touch. New tag `stlboy:passive_mobs`.

### Neptune: master of space, not water
- **DP + RP** New passive *Folded Space*: you reach blocks and creatures 1.5 blocks farther (replaces the underwater swimming/mining passive).
- **DP + RP** Water bubbles and drops are gone: the Neptune aura, trail and shards now use folding space ripples that orbit you and collapse inward. Tidal Shard renamed Gravity Shard.

### Nebula
- **DP + RP** New aura, trail and shard look: spiral gas clouds that grow and shift colour (violet, pink, cyan) around you, with star dust.

### Texts
- **RP** Skill descriptions: "Exclusive with" is now "Exclude" (FR: "Exclut").

### NeoForge version
- **Mod** The Cosmic Visuals resources are now a built-in pack, always active and on top of the pack list: orb and item models can no longer be hidden by other packs or mods (orbs showed as giant vanilla items).

### Figura avatar
- The second skin layer (hat, jacket, sleeves, pants) is kept. The avatar is downloadable as a zip from the private repo's "latest" release.

---

## [1.1.5] — 2026-11-20

### Skill tree
- **DP** Stellar Path is now a symmetric five-pointed star: one branch per class (Nebula on top, then Sun, Neptune, Aurora, Betelgeuse), each opening in a balanced fan with no crossing links. Positions are written in the skills (`placement`), so the datapack and the mod show the same shape.
- **DP + RP** Starry background for the tree in the Apoli screen.
- **Mod** New constellation skill screen replacing the Apoli one: a turning five-pointed star at the heart, one colour and one star model per class (spiral nebula, sun, ringed planet, aurora crystal, red giant), rays toward the classes, orbiting motes, light flowing in open branches, opening and unlock animations, pan and zoom.

### Visuals
- **RP** Round orb particles (wisp) redone in end-rod style: crisp opaque core, short halo, animated twinkle.
- **Mod** Glow halos on orbs, motes and constellation stars (bloom without shaders). Fixed: the halos no longer show as coloured squares in the Stellar Breath beam.
- **Mod** Stellar Surfer skin for the Origins window, only while Stellar Surfer is displayed; every other origin keeps your Origins theme (no Origins texture is replaced).

### Figura avatar
- Star Shard throws redone: bigger motions added on top of the current pose, release right when the shard leaves, flash and spark burst from the throwing hand; a two-hand double throw replaces the kick.

---

## [1.1.4] — 2026-11-19

### Particles visible without shaders
- **DP** Every custom particle (about 700 effects: orbs, Breath, auras, classes, trials...) now uses the *translucent* blend instead of *additive*. Additive light vanished on bright backgrounds unless a shader boosted the glow; translucent particles keep their colors in plain vanilla.
- **RP** Wisp, twinkle and aurora veil textures are more opaque so they stay readable with the new blend.
- **Figura** Charge spirals and other avatar particles use the same blend.

### NeoForge jar
- The all-in-one NeoForge jar (datapack + resource pack) is now also published on CurseForge and Modrinth as a mod.

---

## [1.1.3] — 2026-11-19

### Aurora class aura
- **DP + RP** New Aurora aura: the wavy ribbons circling the player are gone. Soft northern-light veils now ripple in an arc behind you (green, teal and violet, with shimmering rays), plus a few rising sparks. Visible without shaders (translucent blend).

---

## [1.1.2] — 2026-11-19

### White Hole
- **DP** The White Hole deflects projectiles again: arrows, tridents, fireballs, potions and spells (Iron's Spells, Ars Nouveau, Hazen n Stuff...) that enter its field are sent back toward their shooter, held or released. Range grows with the orb's power (4 / 5.2 / 6.4 blocks).
- **DP** The Deflection skill now sends them back 30% faster and makes them count as yours (same as before, but no longer the only way to deflect).

### Betelgeuse
- **DP + RP** New class perk, *Giant's Pride*: Hunted weakens as you rank up. It ends 10% faster per Rank (−50% at Rank 10); Rank 4: no more drag down after a hit; Rank 7: projectiles are no longer pulled toward you; Rank 10: no more slowdown.

---

## [1.1.1] — 2026-11-19

### Stellar Breath
- **DP** Calmer charge: the scattered particles are gone, only a soft light core remains in the hand (the Stellar Surfer Figura avatar draws ordered spirals converging into one or both hands, depending on the charge pose).

### Figura avatar support
- **DP** The hidden marker effect now also signals each real Star Shard cast, so the avatar plays a throw animation only when a shard actually leaves.

---

## [1.1.0] — 2026-11-19 · *First Light Reborn* — first full release

This release gathers every beta since 1.0.3. Highlights:

### Classes & survival
- Five classes (Nebula, Sun, Neptune, Aurora, Betelgeuse), each with a **permanent passive**, its **own aura** and **Star Shards** that change nature.
- **Solar Flare** (Sun): burns like fire for **2 damage per second**, ignores invulnerability frames, covers the whole target; flames now clearly visible without shaders.
- Smaller body, Starlight Veil against projectiles, dodge parry, no friendly fire on villagers / golems / pets, starglow instead of Darkness underground.

### Cosmic powers
- Wormhole: Rank 10 trip home with your allies; **Event Horizon** and **Light Curtain** destroy projectiles and spells (Iron's Spells, Hazen n Stuff, Ars Nouveau, Ars Elemental); thrown weapons just drop.
- Constellations lie flat around the target, scaled to its size, links drawn cleanly from star to star, flash finale.
- Smooth orbs that spin again, gentle Stellar Magnetism with Rank priority between Surfers.

### Trials
- **Meteor Rain** rebuilt: a closed arena (you cannot leave the ring), real 3D meteors falling from the sky with fire trails, red warning rings and an escalating rain.

### Compatibility
- Temperature and thirst immunity (Legendary Survival Overhaul, Tough As Nails, Cold Sweat), Enhanced AI bites, NeoForge mod jar.

---

## [1.0.14] — 2026-11-19 · *Familiar Sounds*

### Sounds
- **DP/RP** Back to the Minecraft sounds everywhere, except the **Wormhole**, which keeps its own space sounds (events `cosmic.wh_*`).

### Compatibility
- **DP** Ars Nouveau and Ars Elemental spell projectiles: ids checked against their source code and corrected (spell, arcing, homing and following projectiles, spell arrows, ice shards, phalanx, water jet, spikes).

---

## [1.0.13] — 2026-11-19 · *Sound of Space*

### Classes
- **DP/RP** Every class now has a **permanent passive**, shown in the skill tree: Nebula *Nebular Veil* (-15% damage taken in the air), Sun *Solar Heart* (immune to fire and lava), Neptune *Inner Tide* (swim and mine underwater freely), Aurora *Boreal Dawn* (1 health every 5 s), Betelgeuse *Giant's Mass* (+4 max health, +50% knockback resistance).
- **DP** Solar Flare flames now cover the whole target, scaling with its hitbox like vanilla fire.

### Visuals & sounds
- **RP** **18 original space sound effects**, fully synthesized for Stellar Surfer (no third-party samples), including a star chime and a constellation finale.
- **DP** Nearly 200 vanilla sounds of the origin replaced by these space sounds.
- **DP** Constellations are bigger around their target (frame and stars).
- **DP** Orb pieces spin on themselves again.

### Licensing
- **RP** Removed 24 files that were exact copies of Minecraft and Origins textures (HUD, Origins screen). Nothing changes visually; the pack now only ships original assets.

---

## [1.0.12] — 2026-11-19 · *Spellbreaker*

### Compatibility
- **DP** Event Horizon (Wormhole), Light Curtain (Breath) and the dodge parry now also destroy **spell projectiles** from Iron's Spells 'n Spellbooks, Hazen n Stuff, Ars Nouveau and Ars Elemental.
- **DP** Thrown weapons (tridents, enchanted weapons and the new `#stlboy:thrown_weapons` tag) are never destroyed: they stop and drop as if they had hit.

---

## [1.0.11] — 2026-11-19 · *Living Flame*

### Visuals
- **RP** Solar Flare flames redrawn with a full life cycle: a spark that grows into a white-hot flame, tears into rising tongues and fades into embers.
- **DP** Solar flame particles last exactly one cycle (Solar Flare and Sun aura).

---

## [1.0.10] — 2026-11-18 · *Galaxy Boards*

### Visuals
- **RP** The class surf boards now share the style of the cosmic skins: a star filled with the class galaxy (slowly drifting), a glowing rim and twinkling stars. Used by the Stellar Surfer Figura avatar.

---

## [1.0.9] — 2026-11-18 · *Star Boards*

### Visuals
- **RP** Five animated **surf boards**, one per class (custom model data 7150–7154 on leather horse armor): Nebula star swirling in dust, Sun star with blazing rays, Neptune star sending out ripples, Aurora star spinning with a ribbon, Betelgeuse five-pointed red giant that pulses. Used by the Stellar Surfer Figura avatar.

---

## [1.0.8] — 2026-11-18 · *Five Skies*

### Classes
- **DP/RP** Each class now has its **own aura** with its own 16×16 pixel-art particles: Nebula dust clouds circling with twinkling stars, Sun embers and solar flames, Neptune bubbles and falling drops, Aurora waving veil ribbons, Betelgeuse falling cinders with a red shockwave pulse.
- **DP/RP** The surf trail and the Star Shard impacts use the particles of your class.
- **RP** Solar Flare flames redrawn as crisp 16×16 pixel art.

---

## [1.0.7] — 2026-11-18 · *Solar Flare*

### Classes
- **DP** Star Shards change nature with your class: **Nebula** slows and reveals, **Sun** ignites, **Neptune** weighs down, **Aurora** heals you, **Betelgeuse** bursts in a small cosmic blast.
- **DP/RP** Sun fire is now a **Solar Flare**: burns like fire (1 damage per second, water and Fire Resistance put it out) but ignores invulnerability frames, with its own solar flames.
- **DP** *Cometary Recoil* becomes **Comet Stride**: out of surf, firing no longer roots you and you move freely (no more backward push).

### Orbs & constellations
- **DP** Black Hole and White Hole visuals now follow the orb in the same tick: smooth movement when you steer them.
- **DP** A **flash finale** when a constellation completes.
- **DP/RP** Thinner links; stars and links translucent again for a softer look without shaders.

### Survival & compatibility
- **DP** Thorns-like damage no longer triggers Hunted (it no longer drags you down).
- **DP** Enhanced AI: cosmic damage no longer makes zombies bite back.
- **DP** Legendary Survival Overhaul: always hydrated (thirst effects removed); only Temperature Immunity is kept. Tough As Nails thirst removed too.

---

## [1.0.6] — 2026-11-18 · *Starburst*

### Constellations
- **DP** Much **bigger stars**, thicker links, and each star appears with a **flash and a burst of sparkles**.

### Stellar Breath
- **DP** Charging now shows sparkles **converging into one point** at your hand, in your class colours.

### Interface
- **RP** Fixed: the Celestial Sigil diagram showed an empty box (the image was wider than Minecraft allows for a font glyph).

### Publishing
- Versions are now published as **beta** on CurseForge and Modrinth.

---

## [1.0.5] — 2026-11-18 · *Drifting Light*

### Fixes
- **DP** Black Hole and White Hole follow your aim smoothly again (they were updated every other tick since 1.0.3).
- **RP** Orbs are translucent again and their cores animate again (the 1.0.4 cutout test had flattened them).

### Constellations
- **DP** The constellation frame now lies **flat (horizontal)** around the target, at mid-height.

### Stellar Magnetism
- **DP** No more orbit: items **glide slowly and smoothly** to you with a trail of custom sparkles.
- **DP** Several Surfers: the **highest Rank** wins the item; at equal Rank, the **closest** one.

### Compatibility
- **DP** Immune to temperature from **Legendary Survival Overhaul**, **Tough As Nails** and **Cold Sweat** (when installed).

### Visuals
- **DP** Every vanilla particle of the origin is replaced by **custom particles** (sparkles and wisps).
- **RP** Softer Rank stars on the astrolabe.
- **RP** New **Celestial Sigil diagram** built from the real HUD, with the legend placed below it.

---

## [1.0.4] — 2026-11-18 · *Little Star*

### Body & survival
- **DP** The Surfer is now **25% smaller** (hitbox, eyes and collisions follow).
- **DP** **Starlight Veil**: projectile damage -40% before Rank 3, -25% until Rank 7, then -15%.
- **DP** **Dodging burns nearby projectiles** (tridents and enchanted weapons just drop).
- **DP** Low Grace no longer gives **Darkness**: a soft **starglow** follows you underground and in the Nether.
- **DP** No friendly fire: villagers, wandering traders, golems, allays, animals and tamed pets are never hurt or caught by your powers (also MineColonies, MCA Reborn and Guard Villagers when installed).

### Movement
- **DP** Climb and dive much faster while surfing (look up/down, or Jump/Sneak).

### Stellar Magnetism
- **DP** Items now **spiral around you ~3 times** before reaching you, leaving a trail of sparkles.

### Interface
- **RP** Astrolabe: the 10 Rank stars are now big, clear crosses when lit, small dim points when not.

### Visuals
- **RP** Test: cosmic effects now use **cutout** rendering, so water and glass stay visible behind them. Edges are sharper; orb shells and the beam haze stay soft.

### Debug & distribution
- **DP** `/function stlboy:debug/rank_up`: +1 Rank instantly, no offering needed.
- New **NeoForge mod jar** (datapack + resource pack in one file).

---

## [1.0.3] — 2026-11-18 · *Old Ruins*

### Constellations
- **RP** Fixed: the constellation animation broke in 1.0.2 (links grew backward). Links stretch from one star to the next again.

### Cosmic forces
- **DP** Wormhole, Rank 10: the exit mouth is gone. Stepping into the heart of your Wormhole takes you **home with your allies** (Ring Blessing, within 10 blocks), **once per Minecraft day**. The remaining time is shown if you try too early.
- **DP** New skill **Event Horizon** (Rank 7, after Nova Stun): your Wormhole swallows nearby projectiles. Projectiles of Stellar Surfers pass through; tridents and enchanted thrown weapons simply **drop to the ground** instead of being destroyed.
- **DP** Magnetised items now leave small sparkles as they fly to you.

### Stellar Breath
- **DP** New skill **Light Curtain** (Rank 4, after the Breath's range skill): the beam destroys the projectiles it crosses (same exceptions as Event Horizon).
- **DP/RP** The HUD now shows the Breath's cooldown.

### Trials
- **DP** Trial shrines are now **overgrown ruins**: collapsed deepslate arch, moss, cyan flowers and a column of light ringed with oxidised copper.

### Interface
- **DP/RP** Gravity Sense and Stellar Magnetism moved into **Graviton**; new custom icons for every Graviton badge.
- **DP/RP** The origin screen shows an **annotated diagram of the Celestial Sigil**.
- **DP** Lighter HUD: class colours are computed once instead of every tick, fewer per-tick checks.

### Debug
- **DP** `/function stlboy:debug/trials`: clickable menu to start any trial, build its shrine, validate it, abort it or forget every trial.

---

## [1.0.2] — 2026-11-15 · *Clear Sky*

### Constellations
- **DP/RP** Constellations now form a clear **frame around the target, facing you**, readable even from far away.
- **RP** Links now stretch smoothly from one star to the next (they used to grow from the middle).
- **DP/RP** Stars, links and their twinkle take the **colours of your class**.

### Stellar Breath
- **DP** A double helix of light now spirals along the beam: the beam has volume from every angle.
- **DP** Fixed: the Breath now hurts the **Ender Dragon**.

### Cosmic forces
- **DP** Casting a Wormhole no longer throws you through its mouth: you must step out of a mouth before you can use it.
- **DP** Rank 10 Wormhole travel loads the arrival area just long enough to arrive (5 s), in any dimension.
- **DP** The Ender Dragon can no longer push your orbs around.
- **DP** Orbs keep their nature in every class colour: the Black Hole's heart stays dark, the White Hole's heart stays white.
- **DP** Air Anchor, Black Hole, White Hole and Wormhole are now presented together in **Graviton**.

### Movement
- **DP** Upward dodge is half as strong.
- **DP** No more star particles in your face when dodging backward.

### Progression & balance
- **DP** Astral Body: safe fall bonus replaced by **-20% collision damage** at Ranks 2 and 6.
- **DP** Eyes of Ender are no longer cosmic food (you need them to find the End).
- **DP** End gateways now carry a Surfer through, even though you cannot throw pearls.
- **DP** Magnetised items now fly in a wider curve.

### Interface
- **DP/RP** One clear message when you are too hungry for your powers — Star Shards still work.
- **RP** The origin screen now explains the custom HUD.
- **RP** Skill descriptions show their numbers again in the skill tree (badges keep them too).
- **RP** Drifting is no longer mentioned in Celestial Surf.

---

## [1.0.1] — 2026-11-14 · *Steady Light*

### Stellar Breath
- **DP/RP** First person: the beam now follows your gaze perfectly, flowing from your side to the exact point you aim at. The impact and its shockwave follow your cursor too.
- **DP** Other players see your beam and its impact locked to your aim.
- **DP** The beam now bursts out of your hand when it starts and folds back into it when it ends.
- **DP** A heavier, more impactful sound when you fire.
- **DP** After you release it, Stellar Breath needs 2 s to gather again (a soft chime tells you when it is ready).

### Constellations
- **DP** Constellations are now twice the size of their target.
- **DP** The 4th star now lights up on the HUD. A 0.25 s pause separates each constellation from the next, so they never overlap.

### Movement
- **DP** Double-tap Jump to dodge upward.
- **DP** Climbing and diving are slightly faster.
- **DP** The surf mini-boost is now a discreet ripple, without the flash.
- **DP** You always rise back into the air when you spawn or respawn, even under a low ceiling.
- **DP** Hitting a surface now hurts in a… stranger way.

### Cosmic forces
- **DP** Wormhole: creatures inside barely see beyond themselves, players inside are blinded.
- **DP** Wormhole, Rank 10: a new secret awaits at its heart.
- **DP** Stasis is replaced by Deflection: your White Hole sends projectiles back, as yours.
- **DP** Horizon Bane now also works inside your White Hole.

### Progression & balance
- **DP** New passive Astral Body: every Rank makes you a little stronger (speed, health, safe fall, luck, reach).
- **DP** Stardust now only comes from kills made with your cosmic powers.
- **DP** Cosmic damage no longer stacks freely: several cosmic hits on the same target within 0.2 s are weakened (also between Surfers in multiplayer). Completed constellations are never weakened.
- **DP** Custom items (ring, offerings) are no longer treated as cosmic food.
- **DP** Star Shards ignore your own orbs (another Surfer's orbs are still fair game).

### Interface
- **DP** HUD: ready-made positions (top / middle / bottom) and a Minimal mode — `/trigger stlboy.hud`.
- **RP** Skill tree: excluded skills are marked in red.
- **RP** Every power keeps its poetic line as description; numbers, costs and ranks moved to its badges.
- **RP** New texts for the new skills and passives (English / Français).

### Fixes
- **DP** Travelling from one Wormhole mouth to the other now works (the function failed to load).
- **DP** A target could stop gaining stars if it left the beam right after a constellation.
- **DP** Beam pieces no longer stay behind if a Surfer disconnects while firing.
- **DP** In multiplayer, a Surfer can no longer catch another Surfer's beam.

---

## [1.0.0] — 2026-11-14 · *First Light*

First public release.

- A new origin for Origins (NeoForge 1.21.1): surf the sky, live on starlight, grow through 10 ranks.
- Stellar Breath and its constellations.
- Three cosmic forces and a few secrets for those who combine them.
- A skill tree with five star oaths — the choice is final.
- Your colours follow your oath (HUD, beam, orbs, trail).
- Multiplayer support for up to five Surfers.
- English and French translations.
